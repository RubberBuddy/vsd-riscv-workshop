# Day 3: Digital Logic Design with TL-Verilog and Makerchip

Welcome to Day 3! This directory contains the foundational digital logic circuits I designed using **TL-Verilog** in the **Makerchip IDE**. 

The labs here document a massive evolution in hardware design: we start with basic, "amnesiac" logic gates and progressively build our way up to a fully pipelined, state-aware, memory-capable architecture. 

---

## 1. Combinational Logic (The "Here and Now")
Combinational logic has no memory. It doesn’t know what happened a second ago, and it doesn't care. The outputs are purely and instantly driven by the current inputs. 

* **The Combinational Calculator:** Think of this as a basic, un-clocked pocket calculator. It takes two inputs, looks at an `opcode` (the instruction telling it whether to add, subtract, multiply, or divide), and immediately routes the correct mathematical result to the output wire. 
  * *Behind the Silicon:* This lab introduced me to core TL-Verilog syntax and the power of ternary operators (`? :`) to create hardware multiplexers (MUXes) that physically route data.
  
  ![Combinational Circuit](image.png)

---

## 2. Sequential Logic (Adding the "Time Machine")
If combinational logic is amnesiac, sequential logic has a memory. By introducing clock cycles, the circuit can retain a "state" and use data from the past to influence the future.

* **Free-Running Counter:** The simplest form of sequential logic. It’s a circuit that simply adds `1` to its previous value every single clock cycle.
  * *Behind the Silicon:* This introduces TL-Verilog's brilliant alignment operator (`>>1`). In hardware, this tells the circuit to look back at the signal value from *exactly one clock cycle ago*, automatically generating the physical flip-flops needed for a feedback loop!
  
  ![Counter](image-1.png)

* **Sequential Calculator:** We took the Combinational Calculator and gave it a memory. Instead of requiring two brand-new inputs every cycle, it takes *one* new input and uses the calculated answer from the *previous* cycle as its second input. 
  * *Behind the Silicon:* We essentially built an accumulator. This proves that mathematical state can be preserved and manipulated over time.
  
  ![Sequential Calculator](image-2.png)

---

## 3. Pipelining (The Assembly Line)
Pipelining is the secret sauce of modern high-performance processors. Instead of waiting for one massive, slow calculation to finish before starting the next one, we break the logic into smaller stages—just like a factory assembly line.

* **Pipelining Logic Overview:** A visual demonstration of how data flows across physical pipeline stage boundaries.
  * *Behind the Silicon:* By defining stages (`@1`, `@2`, `@3`), TL-Verilog automatically infers and places the staging flip-flops between them. This allows multiple instructions to be processed simultaneously at different stages of the pipeline.
  
  ![Pipeline](image-3.png)

* **The Cycle Calculator:** We took our Sequential Calculator and stretched it across multiple pipeline stages. 
  * *Behind the Silicon:* We separated the instruction decode, the mathematical execution, and the write-back phases into different clock cycles. This relieves timing pressure on the hardware, drastically increases the maximum clock frequency, and perfectly mimics the fundamental stages of a real CPU!
  
  ![Cycle Calculator](image-4.png)

---

## 4. Advanced Concepts: Validity & Memory
When you pipeline a design, not every clock cycle contains meaningful data (sometimes there are gaps or "bubbles"). We need to make sure the hardware only reacts when it's supposed to.

* **Cycle Calculator with Validity:** We gave our pipeline a traffic cop. 
  * *Behind the Silicon:* This lab introduces the `$valid` signal. By wrapping our logic in validity conditions (`?$valid`), the pipeline learns to completely ignore garbage data. It prevents the hardware from accidentally overwriting good data with invalid calculations, and it elegantly silences compiler warnings.
  
  ![Validity Cycle Calculator](image-5.png)

* **Calculator with Single-Value Memory:** We built a dedicated recall function! 
  * *Behind the Silicon:* We added a dedicated storage register to the calculator. This allows the user to save a specific value to memory and pull it back out into the active pipeline during a later clock cycle. This is the exact foundational logic required to eventually build a full CPU Register File.
  
  ![Calculator Memory](image-6.png)

---
> **Key Takeaway:** By the end of Day 3, the jump from writing behavioral software code to writing structural hardware code clicked. TL-Verilog's timing abstracts away the nightmare of manually wiring flip-flops, allowing for highly readable, pipelined silicon design.
