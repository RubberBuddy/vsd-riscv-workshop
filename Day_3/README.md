# Day 3: Digital Logic Design with TL-Verilog and Makerchip

This directory contains the foundational digital logic circuits designed using TL-Verilog in the Makerchip IDE. The labs documented here represent a progression in hardware design complexity, beginning with basic combinational logic gates and advancing toward a fully pipelined, state-aware, and memory-capable architecture.

---

## 1. Combinational Logic: Stateless Execution
Combinational logic operates without memory or state retention. The outputs are purely and instantaneously driven by the current inputs, making it the foundation of basic computation.

* **The Combinational Calculator:** Operating similarly to a basic arithmetic logic unit (ALU), this circuit takes two inputs and evaluates an opcode to immediately route the correct mathematical result (addition, subtraction, multiplication, or division) to the output wire.
  * *Architectural Concept:* This implementation demonstrates core TL-Verilog syntax and the application of ternary operators to create hardware multiplexers (MUXes) that physically route data paths based on instruction decoding.

  ![Combinational Circuit](image.png)

---

## 2. Sequential Logic: State Retention and Clocks
By introducing clock cycles, sequential logic allows a circuit to retain a "state" and utilize historical data to influence future outputs.

* **Free-Running Counter:** The fundamental building block of sequential logic. This circuit increments its previous value by a constant factor every clock cycle.
  * *Architectural Concept:* This introduces the TL-Verilog alignment operator (`>>1`). In hardware synthesis, this instructs the circuit to reference a signal value from exactly one clock cycle prior, automatically generating the physical flip-flops required for a feedback loop.

  ![Counter](image-1.png)

* **Sequential Calculator:** This design merges the combinational ALU with sequential state retention. Instead of requiring two independent inputs per cycle, it processes one new input alongside the calculated result from the previous cycle.
  * *Architectural Concept:* By building an accumulator, this circuit proves that mathematical state can be preserved, updated, and manipulated over continuous clock cycles without losing structural integrity.

  ![Sequential Calculator](image-2.png)

---

## 3. Pipelining: Throughput Optimization
Pipelining is a cornerstone of modern high-performance processor design. Rather than waiting for a complex calculation to resolve entirely before accepting new inputs, the logic is segmented into sequential stages to drastically increase data throughput.

* **Pipelining Logic Overview:** A structural demonstration of data flow across physical pipeline stage boundaries.
  * *Architectural Concept:* By defining pipeline stages (`@1`, `@2`, `@3`), the compiler automatically infers and places staging flip-flops between them. This allows multiple instructions to be processed simultaneously at varying depths of the pipeline.

  ![Pipeline](image-3.png)

* **The Cycle Calculator:** This lab distributes the Sequential Calculator across multiple pipeline stages.
  * *Architectural Concept:* Separating the instruction decode, mathematical execution, and write-back phases into distinct clock cycles relieves timing pressure on the hardware. This methodology significantly increases the maximum theoretical clock frequency and mirrors the fundamental stages of a real CPU datapath.

  ![Cycle Calculator](image-4.png)

---

## 4. Advanced Concepts: Validity and Memory
In pipelined architectures, not every clock cycle contains meaningful instructions. Implementing execution control ensures the hardware only reacts to valid operations.

* **Cycle Calculator with Validity:** This iteration introduces execution control mechanisms to the pipeline.
  * *Architectural Concept:* Utilizing the validity signal (`$valid`), the pipeline is instructed to ignore irrelevant or empty data cycles. This prevents the hardware from overwriting legitimate data with invalid calculations and elegantly resolves compiler warnings regarding unused signals.

  ![Validity Cycle Calculator](image-5.png)

* **Calculator with Single-Value Memory:** This design implements a dedicated recall function for localized storage.
  * *Architectural Concept:* A dedicated storage register is integrated into the calculator, enabling the system to save a specific value to memory and retrieve it into the active pipeline during a subsequent clock cycle. This serves as the foundational logic required to build a full CPU Register File.

  ![Calculator Memory](image-6.png)

---

> **Summary Note:** The transition from behavioral software programming to structural hardware design highlights the advantages of TL-Verilog. By abstracting the manual instantiation of flip-flops through timing alignment, the language facilitates the creation of highly readable and structurally sound pipelined silicon.
