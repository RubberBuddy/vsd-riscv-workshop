# Day 3: Digital Logic Design with TL-Verilog and Makerchip

This directory details the foundational digital logic circuits architected using TL-Verilog within the Makerchip IDE. The documented labs trace a strict hardware progression: evolving from purely stateless logic gates into a fully pipelined, state-aware, and memory-capable computational architecture.

---

## 1. Combinational Logic: Stateless Execution
Combinational logic represents hardware in its most deterministic form. Operating independent of clock cycles, the outputs are instantaneously driven by the current input states, bound only by the physical propagation delay of the logic gates.

* **The Combinational Calculator:** Operating as a prototype Arithmetic Logic Unit (ALU), this circuit ingests two dynamic inputs and evaluates an opcode to immediately route the correct mathematical operation (addition, subtraction, multiplication, or division) to the output bus.
  * *Architectural Concept:* This implementation establishes core TL-Verilog structural syntax. It demonstrates the application of ternary operators to synthesize hardware multiplexers (MUXes), dynamically routing data paths based on instruction decoding.

  ![Combinational Circuit](image.png)

---

## 2. Sequential Logic: State Retention and Synchronization
By introducing a synchronous clock signal, sequential logic allows a circuit to retain an internal "state." This enables the hardware to utilize historical data to directly influence future computational outputs.

* **Free-Running Counter:** The bedrock of sequential state machines. This circuit continuously increments its previous value by a constant factor on the rising edge of every clock cycle.
  * *Architectural Concept:* This lab introduces the TL-Verilog alignment operator (`>>1`). In hardware synthesis, this abstraction instructs the compiler to reference a signal value from exactly one clock cycle prior, automatically instantiating the physical D-flip-flops required to create a temporal feedback loop.

  ![Counter](image-1.png)

* **Sequential Calculator:** This design synthesizes the combinational ALU with a sequential feedback path. Instead of requiring two independent inputs per cycle, it processes one newly fetched input alongside the calculated result from the previous cycle.
  * *Architectural Concept:* By building a hardware accumulator, this circuit proves that mathematical state can be preserved, continuously updated, and manipulated over sequential clock cycles without losing structural integrity.

  ![Sequential Calculator](image-2.png)

---

## 3. Pipelining: Throughput Maximization
Pipelining is a cornerstone technique in modern high-performance processor design. Rather than forcing the hardware to wait for a deep, complex logic path to resolve entirely, the datapath is fractured into smaller sequential stages to drastically increase instruction throughput.

* **Pipelining Logic Overview:** A structural visualization of spatial and temporal data flow across physical pipeline boundaries.
  * *Architectural Concept:* By explicitly declaring pipeline stages (`@1`, `@2`, `@3`), the TL-Verilog compiler automatically infers and places the necessary staging registers (flip-flops) between them. This permits the simultaneous processing of multiple instructions at varying depths of execution.

  ![Pipeline](image-3.png)

* **The Cycle Calculator:** This iteration distributes the Sequential Calculator's logic across multiple retiming stages.
  * *Architectural Concept:* Separating the instruction decode, mathematical execution, and write-back phases into distinct clock cycles actively reduces the logic depth per stage. This reduction relieves critical path timing pressure, significantly increasing the theoretical maximum clock frequency and directly mirroring the fundamental stages of a commercial CPU datapath.

  ![Cycle Calculator](image-4.png)

---

## 4. Advanced Concepts: Execution Validity and Local Storage
In deep pipelined architectures, the datapath frequently encounters "bubbles"—clock cycles that do not contain meaningful instructions. Advanced control mechanisms are required to ensure the hardware only commits valid operations.

* **Cycle Calculator with Validity:** This design integrates execution control directly into the pipeline hierarchy.
  * *Architectural Concept:* By propagating a validity signal (`$valid`) alongside the datapath, the hardware is explicitly instructed to ignore irrelevant data cycles. This deterministically prevents the accumulator from overwriting legitimate architectural state with invalid calculations, and elegantly silences compiler warnings regarding unused internal signals.

  ![Validity Cycle Calculator](image-5.png)

* **Calculator with Single-Value Memory:** This lab implements a dedicated load/store recall mechanism for localized hardware storage.
  * *Architectural Concept:* A dedicated storage register is integrated into the calculator, enabling the system to explicitly save a specific value to memory and retrieve it back into the active computational pipeline during a subsequent clock cycle. This logic is the direct precursor required to architect a full CPU Register File.

  ![Calculator Memory](image-6.png)

---

> **Architectural Summary:** The transition from behavioral software programming to structural hardware design underscores the unique advantages of TL-Verilog. By abstracting the manual, error-prone instantiation of physical flip-flops through simple timing alignment operators, the language facilitates the creation of highly readable, structurally sound, and inherently pipelined silicon.  * *Architectural Concept:* Utilizing the validity signal (`$valid`), the pipeline is instructed to ignore irrelevant or empty data cycles. This prevents the hardware from overwriting legitimate data with invalid calculations and elegantly resolves compiler warnings regarding unused signals.

  ![Validity Cycle Calculator](image-5.png)

* **Calculator with Single-Value Memory:** This design implements a dedicated recall function for localized storage.
  * *Architectural Concept:* A dedicated storage register is integrated into the calculator, enabling the system to save a specific value to memory and retrieve it into the active pipeline during a subsequent clock cycle. This serves as the foundational logic required to build a full CPU Register File.

  ![Calculator Memory](image-6.png)

---

> **Summary Note:** The transition from behavioral software programming to structural hardware design highlights the advantages of TL-Verilog. By abstracting the manual instantiation of flip-flops through timing alignment, the language facilitates the creation of highly readable and structurally sound pipelined silicon.
