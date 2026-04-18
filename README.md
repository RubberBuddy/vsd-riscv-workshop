# VSD RISC-V Microarchitecture & AI Acceleration

This repository documents a comprehensive architectural progression from high-level software abstraction down to structural RTL (Register-Transfer Level) silicon design. The project culminates in the synthesis of a custom, 5-stage pipelined RISC-V processor—augmented with a dedicated Edge-AI hardware coprocessor—architected using TL-Verilog within the Makerchip IDE.

The documentation is segmented into progressive milestones, tracking the evolution of the CPU from foundational logic gates to a fully functional, hazard-aware microarchitecture, ultimately closing the loop with a custom ISA extension to resolve software emulation bottlenecks.

---

## Architectural Progression

### Day 1: RISC-V ISA, Compilation, and The Software Bottleneck
The foundational phase establishing the RISC-V software ecosystem. This stage bridges the gap between high-level C algorithms and machine-level binary execution.
* **Core Focus:** Understanding the RISC-V Instruction Set Architecture (ISA) and the GNU Toolchain.
* **The Profiling Benchmark:** Beyond standard compilation, this phase established a critical baseline performance metric. By profiling a neural network Sigmoid activation function via the Spike ISA simulator, a severe structural weakness was exposed: **"Soft-Float Overhead."** The base integer architecture required over 37,000 clock cycles to emulate transcendental math in software, defining the bottleneck that the final hardware must resolve.

### Day 2: Application Binary Interface (ABI) Integration
An analysis of the strict conventions governing the hardware-software interface.
* **Core Focus:** Mastering the RISC-V ABI conventions. This phase dictates how the 32 architectural registers are dynamically allocated for function calls, parameter passing, return value extraction, and stack pointer management during hierarchical subroutines.

<img width="795" height="605" alt="image" src="https://github.com/user-attachments/assets/6cec021a-f0f3-4768-a2a2-db4fc32afc85" />

### Day 3: Digital Logic Synthesis with TL-Verilog
The transition from behavioral software analysis to structural hardware description.
* **Core Focus:** Architecting combinational and sequential logic circuits. The implementation progressed from stateless datapaths into multi-stage pipelined structures, introducing critical concepts such as execution validity signals and localized temporal storage.

<img width="685" height="546" alt="image" src="https://github.com/user-attachments/assets/8c26038c-b772-4d68-b1c7-554332cd8163" />

### Day 4: Base RISC-V Datapath Construction
The structural realization of a single-cycle processor architecture.
* **Core Focus:** Engineering the foundational hardware modules required for instruction execution. This included the Program Counter logic (Fetch), ISA format slicing (Decode), localized memory access (Register File), operational routing (ALU), and combinational branch evaluation.

<img width="888" height="322" alt="image" src="https://github.com/user-attachments/assets/242708ea-2575-4e4b-86b4-b109573d1121" />

### Day 5: Complete Pipelined CPU Microarchitecture
The core architectural transformation phase, restructuring the single-cycle datapath into a high-throughput, 5-stage pipelined processor.
* **Core Focus:** Distributing execution logic across temporal clock boundaries and engineering the complex control structures required to handle architectural hazards.
* **Hazard Management:** Synthesized a Register File combinational bypass network for zero-cycle stalls (forwarding), dynamic load-use hazard detection with PC-rewinds, and deterministic branch squashing. The architectural integrity was proven by natively executing a multi-loop assembly program.

<img width="1024" height="389" alt="image" src="https://github.com/user-attachments/assets/47183a76-d34e-41bc-aedd-3594af3ebd61" />

### Programmable Look-Up Table (PLUT) Accelerator
The final phase closes the architectural loop, directly addressing the 37,000-cycle software emulation bottleneck identified on Day 1.
* **Core Focus:** Expanding the RISC-V ISA to integrate a custom Edge-AI hardware coprocessor designed to natively accelerate non-linear activation functions (Sigmoid, Tanh, Swish).
* **Hardware Acceleration:** Engineered a stateful 16-entry SRAM Programmable Look-Up Table (PLUT) paired with a single-cycle, fixed-point linear interpolator. By shifting transcendental math from software emulation down to dedicated structural silicon, the latency for complex curves was slashed from tens of thousands of cycles down to a highly optimized **1-cycle hardware operation**.

---

## Detailed Documentation

For a comprehensive architectural breakdown, visual logic schematics, and specific implementation details for each phase, please refer to the dedicated directory documentation below:

* [Day 1: Software Toolchain & Baseline Profiling](./Day_1/README.md)
* [Day 2: ABI & Calling Conventions](./Day_2/README.md)
* [Day 3: Digital Logic & TL-Verilog](./Day_3/README.md)
* [Day 4: Single-Cycle RISC-V Core](./Day_4/README.md)
* [Day 5: Pipelined Microarchitecture](./Day_5/README.md)
* [PLUT Hardware Accelerator](./Programmable_LUT/README.md)

---

## Open to Opportunities

I am an Electrical and Electronics Engineering student (Expected Graduation: 2027) actively seeking **internship opportunities** in the semiconductor industry. 

My core focus is on **Digital Logic Design, RTL Engineering, and Hardware Acceleration for Edge AI**. Building this custom RISC-V microarchitecture has solidified my passion for silicon design, and I am eager to bring this hands-on RTL experience to teams engineering next-generation processors and hardware accelerators.

**Let's Connect:**
* **Email:** [ritiksarna@gmail.com]
* **Resume:** [my Resume](./digital_Resume.pdf)
