# Programmable Look-Up Table (PLUT) Extension for RV32I

An architectural extension to the 5-stage RISC-V core built during the VSD MYTH workshop.  
The core gains two custom instructions that let software load any lookup table into hardware
and then query it with hardware-accelerated **Q16 fixed-point linear interpolation**.

---

## Table of Contents

1. [Motivation](#motivation)
2. [Architecture Overview](#architecture-overview)
3. [Instruction Set Extension](#instruction-set-extension)
4. [Fixed-Point Operand Format](#fixed-point-operand-format)
5. [Interpolation Algorithm](#interpolation-algorithm)
6. [Implementation](#implementation)
7. [Test Program](#test-program)
8. [Verified Result](#verified-result)

---

## Motivation

Neural-network inference on an embedded RISC-V core requires fast evaluation of
non-linear activation functions (Sigmoid, ReLU, GELU, etc.). A **hardcoded** combinational
sigmoid block works for one function but cannot be reprogrammed. A **Programmable LUT**
separates the *mechanism* (hardware interpolation) from the *function* (software-loaded table
entries), turning the processor into a configurable accelerator.

---

## Architecture Overview


<img width="1123" height="831" alt="image" src="https://github.com/user-attachments/assets/5d59e72d-169b-43d0-b9cb-bdadbc874380" />

Seven SV-level boundary wires bridge TLV signals into the `\SV` always_ff block without
exposing TLV `$names` as Verilog array indices (which Verilator would interpret as PLI calls):

| Wire | Direction | Purpose |
|------|-----------|---------|
| `plut_rd_idx` | TLV to SV | Base read address (y0) |
| `plut_rd_idx_p1` | TLV to SV | Next read address (y1) |
| `plut_val_low` | SV to TLV | y0 value |
| `plut_val_high` | SV to TLV | y1 value |
| `plut_wr_en` | TLV to SV | Write enable |
| `plut_wr_index` | TLV to SV | Write address |
| `plut_wr_data` | TLV to SV | Write data |

---

## Instruction Set Extension

Both instructions use the **RISC-V custom-0 opcode space** (`7'b0001011`, bits\[6:0\] = `0x0B`),
which is reserved for non-standard extensions and will never conflict with ratified ISA additions.

### STORE\_LUT — populate a table entry

```
 31      25 24    20 19    15 14  12 11     7 6       0
 +---------+--------+--------+-----+--------+---------+
 | 0000000 |  rs2   |  rs1   | 001 |  0000  | 0001011 |
 +---------+--------+--------+-----+--------+---------+
              value   index  f3=1   rd=x0    opcode
```

- `rs1[3:0]` — destination index in the PLUT (0 to 15)
- `rs2[31:0]` — 32-bit value to store
- `rd` — must be `x0` (no register writeback)

### LUT\_ACTIV — interpolated table query

```
 31      25 24    20 19    15 14  12 11     7 6       0
 +---------+--------+--------+-----+--------+---------+
 | 0000000 |   x0   |  rs1   | 000 |   rd   | 0001011 |
 +---------+--------+--------+-----+--------+---------+
                      operand f3=0  result   opcode
```

- `rs1` — packed Q16 operand (see [Fixed-Point Operand Format](#fixed-point-operand-format))
- `rd` — receives the 32-bit interpolated result

### Pre-computed encoding table

| Instruction | rd | rs1 | rs2 | funct3 | 32-bit hex |
|---|---|---|---|---|---|
| `STORE_LUT x0, r20, r21` | x0 | r20 | r21 | 001 | `0x015A100B` |
| `LUT_ACTIV r23, r22, x0` | r23 | r22 | x0 | 000 | `0x000B0B8B` |

**Encoding formula (R-type):**

```
{7'b0000000, rs2[4:0], rs1[4:0], funct3[2:0], rd[4:0], 7'b0001011}
```

---

## Fixed-Point Operand Format

The `rs1` operand for `LUT_ACTIV` is a composite 32-bit value:

```
 31        20 19    16 15              0
 +-----------+--------+----------------+
 |  unused   | index  |   fraction     |
 |  12 bits  | 4 bits |    16 bits     |
 +-----------+--------+----------------+
               y0 addr   Q16 fixed-pt
               (0-15)    0x0000 = 0.0
                         0x8000 = 0.5
                         0xFFFF ~ 1.0
```

The **index** selects `plut_array[index]` as y0 and `plut_array[index+1]` as y1.  
The **fraction** is a Q16 unsigned fixed-point number representing the interpolation weight
between the two adjacent table entries.

### Building the operand with LUI

`LUI rd, imm20` loads `{imm20, 12'b0}` into `rd`.  
To encode index=5, fraction=0x8000:

```
target value = 0x00058000
bits[31:12]  = 0x00058  (the 20-bit LUI immediate = 0b00000000000001011000)

m4_asm(LUI, r22, 00000000000001011000)   ->   r22 = 0x00058000
```

---

## Interpolation Algorithm

The execute stage performs **signed-aware linear interpolation**:

```python
if val_high >= val_low:       # increasing segment
    result = val_low + ((val_high - val_low) * fraction) >> 16
else:                          # decreasing segment
    result = val_low - ((val_low - val_high) * fraction) >> 16
```

This correctly handles both monotonically increasing and decreasing table segments
(e.g. the falling tail of a Sigmoid or a negative-slope activation).

**Numeric example from the test:**

```
plut[5] = 255,  plut[6] = 0,  fraction = 0x8000 (= 0.5)

is_up    = (0 >= 255)      = false
abs_diff = 255 - 0         = 255
lut_mult = 255 x 0x8000    = 0x7F8000  (48-bit product)
delta    = 0x7F8000 >> 16  = 127
result   = 255 - 127       = 128  PASS
```

---

## Implementation

### Key changes relative to the baseline 5-stage core

#### SV block — memory and wire declarations

```systemverilog
reg [31:0] plut_array [0:15];   // 16-entry x 32-bit PLUT
integer    plut_i;               // reset loop counter

// Write-port wires (driven from TLV @3)
wire        plut_wr_en;
wire [3:0]  plut_wr_index;
wire [31:0] plut_wr_data;

// Read-port wires — array lookups done here in \SV to avoid
// TLV $names appearing inside Verilog array indices (Verilator PLI issue)
wire [3:0]  plut_rd_idx;
wire [3:0]  plut_rd_idx_p1;
wire [31:0] plut_val_low;
wire [31:0] plut_val_high;
assign plut_val_low  = plut_array[plut_rd_idx];
assign plut_val_high = plut_array[plut_rd_idx_p1];
```

#### @1 Decode — opcode additions

```
// Extend $is_r_instr to cover custom-0 so rs1/rs2/rd extraction is automatic
$is_r_instr = ... ||
              $instr[6:2] == 5'b00010;   // custom-0

// New decode signals
$is_config_lut     = $dec_bits ==? 11'bx_001_0001011;  // STORE_LUT
$is_lut_activation = $dec_bits ==? 11'bx_000_0001011;  // LUT_ACTIV
```

#### @3 Execute — read / interpolate / write paths

```
// 1. Slice the operand
$lut_index[3:0]     = $src1_value[19:16];
$lut_fraction[15:0] = $src1_value[15:0];
$lut_index_p1[3:0]  = $lut_index + 4'b0001;

// 2. Drive SV read-address wires; results come back as SV wires
*plut_rd_idx    = $lut_index;
*plut_rd_idx_p1 = $lut_index_p1;
$val_low[31:0]  = *plut_val_low;
$val_high[31:0] = *plut_val_high;

// 3. Signed-aware linear interpolation
$lut_is_up          = $val_high >= $val_low;
$lut_abs_diff[31:0] = $lut_is_up ? ($val_high - $val_low) : ($val_low - $val_high);
$lut_mult[47:0]     = $lut_abs_diff * {16'b0, $lut_fraction};
$lut_result[31:0]   = $lut_is_up ? ($val_low + $lut_mult[47:16])
                                  : ($val_low - $lut_mult[47:16]);

// 4. Drive write-port wires
*plut_wr_en    = $valid && $is_config_lut;
*plut_wr_index = $src1_value[3:0];
*plut_wr_data  = $src2_value;
```

RF write-back guard — `STORE_LUT` must never write the register file:

```
$rf_wr_en = ($valid && $rd_valid && ($rd != 5'b0) && !$is_config_lut) ||
            >>2$valid_load;
```

Result mux addition:

```
$result[31:0] = ...
                $is_lut_activation ? $lut_result :
                32'bx;
```

#### Final SV block — synchronous write port

```systemverilog
always_ff @(posedge clk) begin
    if (reset) begin
        for (plut_i = 0; plut_i < 16; plut_i = plut_i + 1)
            plut_array[plut_i] <= 32'h0000_0000;
    end else if (plut_wr_en) begin
        plut_array[plut_wr_index] <= plut_wr_data;
    end
end
```

> **Key constraint:** `reset` (not `*reset`) must be used inside `\SV` blocks.
> The `*signal` dereference syntax is TLV-only and causes a Verilator parse error in raw SV.

---

## Test Program

Because Makerchip's `m4_asm` macro system does not support custom opcodes by mnemonic,
the two PLUT instructions are injected as raw 32-bit constants using a cycle-count override
in the `@1` fetch stage:

```
$instr[31:0] = (*cyc_cnt == 20) ? 32'h015A100B :   // STORE_LUT x0, r20, r21
               (*cyc_cnt == 21) ? 32'h000B0B8B :   // LUT_ACTIV r23, r22, x0
               $imem_rd_data[31:0];
```

### Setup instructions (assembled by m4\_asm)

> In the MYTH workshop `m4_asm` macro, immediates are given as **binary strings**.

| Instruction | Binary immediate | Decimal | Purpose |
|---|---|---|---|
| `ADDI r20, r0, 101` | `101` (binary) | 5 | PLUT write index |
| `ADDI r21, r0, 11111111` | `11111111` (binary) | 255 | Value to store |
| `LUI r22, 00000000000001011000` | 20-bit binary | 0x00058000 | LUT\_ACTIV operand |

### What the injected instructions do

```
Cycle 20: STORE_LUT x0, r20, r21
          plut_wr_en    = 1
          plut_wr_index = r20[3:0] = 5
          plut_wr_data  = r21      = 255
          plut[5] latched to 255 on next rising edge

Cycle 21: LUT_ACTIV r23, r22, x0
          lut_index    = r22[19:16] = 5
          lut_fraction = r22[15:0]  = 0x8000  (0.5 in Q16)
          val_low      = plut[5]    = 255
          val_high     = plut[6]    = 0  (reset default, never written)
          result       = 255 - floor(255 x 0.5) = 128
          r23 <- 128
```

---

## Verified Result

| Register | Expected | Observed | Status |
|---|---|---|---|
| `xreg[23]` | 128 (0x80) | 128 | PASS |
| `xreg[15]` | 45 (sum 1 to 9) | 45 | PASS (baseline) |

The Makerchip waveform pane shows `xreg[23]` settling to `0x00000080` after cycle 21.

### Waveform signals to observe

| Signal | Expected behaviour |
|---|---|
| `plut_wr_en` | Pulses high for 1 cycle at cycle 20 |
| `plut_wr_index` | Shows `5` while `plut_wr_en` is high |
| `plut_wr_data` | Shows `255` while `plut_wr_en` is high |
| `plut_rd_idx` | Shows `5` at cycle 21 |
| `plut_val_low` | Shows `255` at cycle 21 |
| `plut_val_high` | Shows `0` at cycle 21 |
| `lut_result` | Shows `128` at cycle 21 |
| `xreg[23]` | Latches to `128` after cycle 21 |

<img width="1919" height="823" alt="image" src="https://github.com/user-attachments/assets/da6fbb17-f09f-4572-a79b-33db489c9086" />


---
