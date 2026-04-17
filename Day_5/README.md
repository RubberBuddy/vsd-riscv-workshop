# Day 5: Complete Pipelined RISC-V CPU Microarchitecture

This directory documents the final and most complex phase of the CPU design: transforming the single-cycle RISC-V core into a high-performance, 5-stage pipelined processor. 

Pipelining vastly improves instruction throughput but introduces severe physical timing challenges known as "hazards." The labs contained here detail the hardware logic required to detect and resolve data hazards, control hazards, and memory latency issues while maintaining strict adherence to the RISC-V specification.

---

## 1. Pipelining the Datapath & Validity
The initial step requires physically distributing the single-cycle logic across distinct clock cycles (Fetch, Decode, Read, Execute, Write) while ensuring invalid "garbage" data does not corrupt the CPU state.

* **3-Cycle Validity & Pipelined RISC-V:** These stages establish the physical boundaries of the pipeline (`@1` through `@5`). 
  * *Architectural Concept:* By utilizing the `$valid` signal across pipeline stages, the hardware acts as a traffic controller. It ensures that operations like register writes only occur if the data flowing through that specific stage represents a legitimate, executable instruction, preventing structural corruption during pipeline startup or stalls.

  ![3-cycle-valid](images/image.png)
  ![cycle_riscv](images/image2.png)
  ![cycle_riscv_2](images/image-1.png)

---

## 2. Resolving Data Hazards (Forwarding)
When sequential instructions depend on each other (e.g., an `ADD` followed immediately by a `SUB` that needs the sum), the pipeline naturally encounters a Read-After-Write (RAW) hazard because the data hasn't been written to the Register File yet.

* **Register File Bypass:** Implementing hardware forwarding multiplexers.
  * *Architectural Concept:* Rather than stalling the CPU to wait for the Register File write, this logic intercepts the freshly calculated ALU result from the previous instruction (`>>1$result` or `>>2$result`) and routes it directly "mid-air" into the input of the current instruction's ALU execution stage. This ensures 100% throughput for standard arithmetic dependencies.

  ![reg_file_bypass](images/image_copy.png)

---

## 3. Resolving Control Hazards & Finalizing Execution
Branching introduces control hazards: by the time the CPU determines a branch must be taken, it has already fetched incorrect instructions into the early pipeline stages.

* **Branch Squashing & Complete ALU/Decode:** Integrating full pipeline control flow.
  * *Architectural Concept:* When a branch condition evaluates to true, the hardware must invalidate the "phantom" instructions trapped in the shadow of the branch. This is achieved by forcing their `$valid` bits to zero, effectively turning them into harmless pipeline bubbles. Simultaneously, the complete decode and ALU blocks are finalized to support the full subset of base integer instructions required for this core.

  ![Branches](images/image_copy2.png)
  ![complete_instruction_decode](images/imagecopy3.png)
  ![complete_ALU](images/imagecopy4.png)

---

## 4. Memory Integration & Load-Use Hazards
Integrating Data Memory (DMem) introduces the most complex stall condition: a memory read takes longer than a standard ALU calculation, breaking the standard bypass network.

* **Redirecting Loads & Load Data:** Handling the 2-cycle memory latency.
  * *Architectural Concept:* When an instruction depends on a `LOAD`, the pipeline must physically stall. The logic handles this by squashing the current instruction, rewinding the Program Counter to re-fetch it, and waiting. To write the delayed data without colliding with new instructions, the hardware performs a highly orchestrated "hijack" of the Register File write port, routing the memory data backward precisely during the invalid bubble cycle created by the stall.
* **Load/Store Test:** Verification of the memory access logic, ensuring data successfully routes from the ALU calculation, into the DMem array, and back out into the designated architectural register.

  ![Redirect_loads](images/imagecopy5.png)
  ![Load_data](images/imagecopy6.png)
  ![Load/store_test](images/imagecopy7.png)

---

## 5. Unconditional Jumps
Finalizing the control flow by adding instructions that alter the Program Counter unconditionally every time they execute.

* **JAL & JALR (Jump and Link):** Implementing absolute and PC-relative jumps.
  * *Architectural Concept:* Similar to branches, jumps inherently cause control hazards that require pipeline flushes. This logic computes the explicit jump targets (either `PC + Immediate` or `rs1 + Immediate`) and routes them to the fetch stage. Additionally, it ensures the return address (`PC + 4`) is successfully routed through the ALU and written into the Register File, enabling proper function call hierarchies.

  ![Jumps](images/imagecopy8.png)

---

> **Final Architectural Summary:** The conclusion of Day 5 marks the completion of a fully functional, 5-stage pipelined RISC-V CPU. The core successfully demonstrates instruction fetch, decode, hazard-aware execution, memory interfacing, and write-back, proving a deep understanding of structural silicon design and RTL microarchitecture.
