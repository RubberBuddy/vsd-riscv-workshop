# Day 4: RISC-V CPU Microarchitecture (Base Datapath)

This directory documents the construction of the foundational datapath for a single-cycle RISC-V processor using TL-Verilog. The progression follows the implementation of standard CPU stages: Fetch, Decode, Execute, and Register Write-back.

---

## 1. Instruction Fetch

* **Next PC Calculation:** The foundational control flow mechanism. This logic establishes the Program Counter (PC) incrementer, advancing the memory address by 4 bytes (one standard 32-bit RISC-V word) every clock cycle.
  ![Next_pc](image.png)

* **Fetch Logic:** Integration of the Program Counter with the Instruction Memory (IMem) macro. The PC acts as the read address, instructing the memory block to output the specific 32-bit instruction sequence required for execution.
  ![Fetch](image-1.png)

---

## 2. Instruction Decode

* **Instruction Type Decoding:** The first stage of decoding. By analyzing the specific opcode bits (bits [6:2] of the instruction), the hardware categorizes the incoming instruction into one of the core RISC-V base formats: R-type, I-type, S-type, B-type, U-type, or J-type.
  ![Instr_type_decode](image-2.png)

* **Immediate Decoding:** Because immediate (constant) values are packed across different bit fields depending on the instruction type, this multiplexer logic extracts and correctly sign-extends those bits into a uniform 32-bit operand for the ALU to process.
  ![Instr_immediate_Decode](image-3.png)

* **Opcode and Function Field Extraction:** Slicing the 32-bit instruction to isolate the `opcode` (bits [6:0]), `funct3` (bits [14:12]), and `funct7` (bits [31:25]). These specific fields act as the unique identifier for what mathematical or logical operation needs to occur.
  ![Instr_Decode](image-4.png)

* **Register Field Decoding:** Isolating the physical addresses of the required operands. This logic extracts the 5-bit indices for Source Register 1 (`rs1`), Source Register 2 (`rs2`), and the Destination Register (`rd`).
  ![instr_field_decode](image-5.png)

* **Specific Instruction Decoding:** Combining the extracted `opcode`, `funct3`, and `funct7` fields to create explicit, single-bit boolean signals (e.g., `$is_add`, `$is_addi`, `$is_beq`) that will act as the control signals for the execution units.
  ![Instr_decode_1](image-6.png)

---

## 3. Register File Access

* **Register File Read (Part 1):** Wiring the extracted `rs1` and `rs2` indices into the hardware Register File macro. This dictates which two of the 32 architectural registers will output their stored data to the execution stage.
  ![Reg_file_read](image-7.png)

* **Register File Read (Part 2):** Implementing read-enable validation. This logic ensures the Register File only attempts to read data if the decoded instruction type actually requires source registers, optimizing power and preventing invalid data propagation.
  ![reg_file_read2](image-8.png)

* **Register File Write:** Connecting the computed result back into the memory array. This includes the essential RISC-V hardware constraint: protecting the zero register (`x0`). The write-enable logic specifically drops any attempt to overwrite index 0, ensuring it permanently yields a value of zero.
  ![reg_file_write](image-10.png)

---

## 4. Execute & Control Flow

* **Arithmetic Logic Unit (ALU):** The primary computational structure. Using a large multiplexer driven by the specific instruction decode signals, the ALU selects between various mathematical paths (addition, bitwise operations, shifting) and processes the source values or immediate constants.
  ![ALU](image-9.png)

* **Branch Evaluation:** The logic responsible for evaluating conditional statements. The ALU compares the values of the two source registers based on the requested branch type (e.g., equality for `BEQ`, less-than for `BLT`) and asserts a boolean `$taken_branch` signal if the condition is satisfied.
  ![Branches](image-11.png)

* **Branch Redirection:** The culmination of the control flow hazard. This updates the initial Program Counter multiplexer at the Fetch stage. If a branch is evaluated as "taken", the PC stops incrementing by 4 and instead loads the calculated branch target address, successfully redirecting the software execution path.
  ![branches_2](image-12.png)
