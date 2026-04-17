# Day 4: RISC-V CPU Microarchitecture (Base Datapath)

This directory documents the transition from general digital logic to a specific Instruction Set Architecture (ISA). The labs contained here represent the construction of the foundational datapath for a RISC-V processor, built using TL-Verilog in the Makerchip IDE.

This phase focuses on architecting the core mechanisms required for a CPU to fetch, decode, and execute instructions from memory, laying the groundwork for the fully pipelined core in Day 5.

---

## 1. Instruction Fetch (IF)
The Fetch stage is responsible for managing the Program Counter (PC) and retrieving the correct 32-bit instruction from memory.

* **Next PC & Fetch Logic:** The CPU must track its current location in memory. This logic establishes the Program Counter multiplexer. By default, it increments the PC by 4 bytes (one standard 32-bit word) every clock cycle to fetch the subsequent instruction from the Instruction Memory (IMem) macro.
  * *Architectural Concept:* This establishes the foundational control flow loop of the processor, ensuring a continuous stream of instructions is fed into the decode logic.

  ![Next_pc](image.png)
  ![Fetch](image-1.png)

---

## 2. Instruction Decode (ID)
Once an instruction is fetched, the CPU must translate the 32-bit binary string into actionable control signals. The RISC-V ISA is highly modular, requiring structured extraction of opcodes, immediate values, and register indices.

* **Type, Immediate, and Field Decoding:** These labs break down the dense 32-bit instruction based on the RISC-V base integer instruction formats (R, I, S, B, U, J types). 
  * *Architectural Concept:* The decoding logic efficiently slices the instruction bus to extract the `opcode`, `funct3`, and `funct7` bits to determine the exact operation. Simultaneously, it extracts the destination register (`rd`) and source registers (`rs1`, `rs2`). Because immediate values are packed differently depending on the instruction type, specialized multiplexer logic is implemented to properly extract and sign-extend the immediate value into a full 32-bit operand.

  ![Instr_type_decode](image-2.png)
  ![Instr_immediate_Decode](image-3.png)
  ![Instr_Decode](image-4.png)
  ![instr_field_decode](image-5.png)
  ![Instr_decode_1](image-6.png)

---

## 3. Register File Read & Write
The Register File is the internal, high-speed memory of the CPU, containing the 32 architectural registers defined by the RISC-V specification.

* **Register File Read & Write Integration:** This logic connects the extracted register indices (`rs1`, `rs2`, `rd`) to the hardware Register File macro.
  * *Architectural Concept:* The read ports continuously output the data stored at the addresses provided by `rs1` and `rs2`. The write logic ensures that computed results are safely stored back into `rd`. Crucially, this implementation includes the hardwired zero-register constraint: any attempt to write to register `x0` is intentionally ignored by the hardware, adhering strictly to the RISC-V specification.

  ![Reg_file_read](image-7.png)
  ![reg_file_read2](image-8.png)
  ![reg_file_write](image-10.png)

---

## 4. Execute & Control Flow (EX)
The Execute stage performs the actual mathematical and logical operations, as well as evaluating conditions for altering the control flow.

* **Arithmetic Logic Unit (ALU):** The computational brain of the CPU. The ALU receives the decoded signals and the source values (from the Register File or the immediate extractor) to perform operations like addition, subtraction, or bitwise logic.
  ![ALU](image-9.png)

* **Branch Logic (Parts 1 & 2):** Implementing conditional control flow (`BEQ`, `BNE`, `BLT`, `BGE`, etc.). 
  * *Architectural Concept:* The branch evaluation logic compares the values of `rs1` and `rs2`. If the specific branch condition is met (evaluates to true), a `taken_branch` signal is asserted. The second phase of this logic routes the calculated branch target address (Current PC + Immediate) back to the PC multiplexer in the Fetch stage, allowing the CPU to successfully jump to a new section of code.

  ![Branches](image-11.png)
  ![branches_2](image-12.png)

---

> **Summary Note:** The completion of Day 4 establishes a functioning, single-cycle representation of the RISC-V datapath. The CPU can successfully fetch, decode, compute, and branch. This structural foundation is essential before introducing the complexities of timing separation, hazard resolution, and pipelining in Day 5.
