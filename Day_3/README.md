# Day 3: Digital Logic Design with TL-Verilog and Makerchip

This directory contains the implementations of foundational digital logic circuits designed using TL-Verilog in the Makerchip IDE. The labs progressively build from basic stateless combinational logic up to advanced pipelined and state-dependent architectures.

---

## 1. Combinational Logic
This section focuses on basic logic gates and routing without memory or clock dependencies. The outputs are purely a result of the current inputs.

* **Combinational Calculator:** A basic arithmetic logic unit (ALU) capable of performing operations (addition, subtraction, multiplication, division) based on an input opcode. This lab introduces the core TL-Verilog syntax, variable assignment, and the use of ternary operators (`? :`) to create hardware multiplexers that route the correct mathematical result to the output wire.
  ![Combinational Circuit](image.png)

---

## 2. Sequential Logic
Unlike combinational logic, sequential logic introduces clock cycles and state retention. The circuit can "remember" data from the past to influence the future.

* **Free-Running Counter:** A foundational sequential circuit that increments its value every clock cycle. This lab introduces the TL-Verilog alignment operator (`>>1`), which allows the hardware to look back at the signal value from exactly one clock cycle ago. This creates the feedback loop necessary for state retention.
  ![Counter](image-1.png)

* **Sequential Calculator:** This design merges the combinational ALU with the counter concept. Instead of taking two brand-new inputs every cycle, it takes one new input and uses the calculated answer from the previous cycle as the second input. This forms an accumulator, demonstrating how mathematical state is preserved over time.
  ![Sequential Calculator](image-2.png)

---

## 3. Pipelining
Pipelining is a crucial concept for high-performance digital design. It involves breaking down complex logic paths into smaller, sequential stages to increase the overall clock frequency and throughput of the CPU.

* **Pipelining Logic Overview:** A demonstration of how data flows across physical pipeline stage boundaries (using `@1`, `@2`, etc. in TL-Verilog). It visualizes how hardware flip-flops are automatically generated between stages to hold data while the next stage processes it.
  ![Pipeline](image-3.png)

* **Cycle Calculator:** Taking the Sequential Calculator and stretching it across multiple pipeline stages. By separating the instruction decode, the mathematical execution, and the write-back phases into different clock cycles, the design relieves timing pressure on the hardware, mimicking the fundamental stages of a real CPU pipeline.
  ![Cycle Calculator](image-4.png)

---

## 4. Advanced Concepts: Validity and Memory
Optimizing the pipeline by introducing execution control and local storage, ensuring the hardware only reacts when instructed to do so.

* **Cycle Calculator with Validity:** In a pipelined design, not every clock cycle contains meaningful data. This lab introduces the `$valid` signal, which acts as a traffic light. By using validity conditions (`?$valid`), the pipeline learns to ignore garbage data, silencing unwanted warnings and preventing the hardware from overwriting good data with invalid calculations.
  ![Validity Cycle Calculator](image-5.png)

* **Calculator with Single-Value Memory:** Implementing a dedicated recall function. This design adds a dedicated storage register to the calculator, allowing the user to save a specific value to memory and pull it back into the active pipeline during a later clock cycle. This serves as a foundational exercise for building full CPU Register Files.
  ![Calculator Memory](image-6.png)
