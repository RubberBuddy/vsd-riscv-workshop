# VSD RISC-V Microarchitecture Workshop

This repository contains the complete progression of a 5-day hardware design workshop focused on architecting a 5-stage pipelined RISC-V processor. The project transitions from high-level software compilation down to structural silicon design using TL-Verilog and the Makerchip IDE.

The documentation is divided into daily milestones, tracking the evolution of the CPU from basic logic gates to a fully functional, hazard-aware microarchitecture.

---

## Workshop Progression

### Day 1: Introduction to RISC-V ISA and Compilation
The foundational phase focusing on the RISC-V software ecosystem. This stage bridges the gap between high-level programming languages and machine-level execution.
* **Core Focus:** Understanding the RISC-V Instruction Set Architecture (ISA) and the transition from C code to binary.
* **Extended Implementation:** A deep dive into the RISC-V GNU Toolchain. This involved writing custom C programs, compiling them down to bare-metal assembly using `riscv64-unknown-elf-gcc`, and utilizing `objdump` to analyze the exact instruction formatting. The generated binaries were then executed and debugged using the Spike ISA simulator to verify standard execution flows before any hardware was built.

### Day 2: Application Binary Interface (ABI)
An exploration of the rules that govern how software interacts with the hardware architecture.
* **Core Focus:** Understanding the RISC-V ABI conventions. This included analyzing how the 32 architectural registers are allocated for function calls, argument passing, return values, and stack pointer management during nested subroutines.

### Day 3: Digital Logic Design with TL-Verilog
The transition from software concepts to hardware description. This phase establishes the fundamental building blocks of digital logic within the Makerchip IDE.
* **Core Focus:** Designing combinational and sequential logic circuits. The implementation progressed from a basic stateless calculator to a multi-stage pipelined datapath incorporating execution validity and localized memory retention.

### Day 4: Base RISC-V Datapath Construction
The construction of a single-cycle processor architecture capable of interpreting standard RISC-V machine code.
* **Core Focus:** Building the hardware required for Instruction Fetch, Instruction Decode, Register File read/write access, Arithmetic Logic Unit (ALU) execution, and conditional branch evaluation.

### Day 5: Complete Pipelined CPU Microarchitecture
The final architectural phase, transforming the single-cycle datapath into a high-performance, 5-stage pipelined processor. 
* **Core Focus:** Distributing logic across physical clock boundaries and designing the complex control structures required to handle Read-After-Write (RAW) data hazards, control hazards, and memory access latency.
* **Extended Implementation:** Comprehensive hazard resolution and full testbench verification. This involved engineering a Register File bypass network (forwarding) for zero-cycle stalls, load-use hazard detection with Program Counter rewinds, and branch squashing. The architectural integrity was definitively proven by successfully executing a multi-loop assembly program natively on the custom TL-Verilog core, verified through rigorous waveform analysis.

---

## Detailed Documentation

For a comprehensive architectural breakdown, visual logic diagrams, and specific implementation details for each phase, please refer to the dedicated daily documentation below:

* [Day 1 Documentation](./Day_1/README.md)
* [Day 2 Documentation](./Day_2/README.md)
* [Day 3 Documentation](./Day_3/README.md)
* [Day 4 Documentation](./Day_4/README.md)
* [Day 5 Documentation](./Day_5/README.md)
