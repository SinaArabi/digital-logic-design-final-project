# Digital Logic Design — Final Project

This repository contains Verilog solutions (modules + testbenches) for a **Digital Logic Design** final project. It covers:

- **Problem 1:** Transistor-level CMOS implementation of a Boolean function with exhaustive testbench.  
- **Problem 2:** Gate-level **4-bit signed adder** with **overflow detection** and scenario-based tests.  
- **Problem 3 (extra):** Dataflow **6-bit signed ALU** with four operations and targeted tests.

> Note: Each problem includes two files: one `Module.v` and one `Testbench.v`.

---

## Problems Overview

### Problem 1 — Transistor-Level Boolean Function
Implement:

f(A,B,C,D) = A·D + A·B'·C + B·D + A'·C'·D'

at the transistor (CMOS) level and provide a testbench that evaluates **all 16 input combinations**.

**Files**
```
src/Problem1_Module.v
tb/Problem1_TB.v
```

---

### Problem 2 — 4-Bit Signed Adder (Gate-Level) + Overflow
Build a 4-bit **signed** adder with an **overflow detector** using gate-level Verilog.  
The testbench should include at least four cases:

1. Two positive numbers — **no overflow**  
2. Two positive numbers — **with overflow**  
3. Two negative numbers — **no overflow**  
4. Two negative numbers — **with overflow**

**Files**
```
src/Problem2_Module.v
tb/Problem2_TB.v
```

---

### Problem 3 — 6-Bit Signed ALU (Dataflow)
Create a 6-bit signed ALU with inputs `A`, `B` and 2-bit `op` selecting one of the following operations:

| op | Operation                                 |
|----|-------------------------------------------|
| 00 | `(A <<< 2) + (B >>> 1)` (arith. shifts)   |
| 01 | `A + 3*B`                                 |
| 10 | `-B`                                      |
| 11 | `|2*A - B|`                               |

> Shifts are **arithmetic** (`<<<` left, `>>>` right) to preserve sign for signed types.

**Files**
```
src/Problem3_Module.v
tb/Problem3_TB.v
```

---

## Repository Structure
```
.
├─ src/
│  ├─ Problem1_Module.v
│  ├─ Problem2_Module.v
│  └─ Problem3_Module.v
├─ tb/
│  ├─ Problem1_TB.v
│  ├─ Problem2_TB.v
│  └─ Problem3_TB.v
├─ docs/
│  ├─ Project_Spec.pdf
│  └─ Report.pdf
├─ .gitignore
├─ LICENSE
└─ README.md
```

---

## How to Run (Icarus Verilog)

You can use **Icarus Verilog** (`iverilog`) + `vvp` to compile and run. Examples:

**Problem 1**
```bash
iverilog -g2012 -o build/p1.out src/Problem1_Module.v tb/Problem1_TB.v
vvp build/p1.out
```

**Problem 2**
```bash
iverilog -g2012 -o build/p2.out src/Problem2_Module.v tb/Problem2_TB.v
vvp build/p2.out
```

**Problem 3**
```bash
iverilog -g2012 -o build/p3.out src/Problem3_Module.v tb/Problem3_TB.v
vvp build/p3.out
```

> Add `$display` statements in testbenches to print inputs/outputs and any flags (e.g., `overflow`).

---

## Testbench Guidance

- **Problem 1:** Loop through all 16 combinations of `{A,B,C,D}`.  
- **Problem 2:** Use `signed [3:0]` for operands. Show `sum` and an `overflow` flag.  
- **Problem 3:** Use `signed [5:0]` types and arithmetic shifts. For absolute value, handle sign carefully to avoid overflow.  

---

## Tooling

- **Simulator:** Icarus Verilog, ModelSim/Questa, Vivado Simulator  
- **Waveforms:** Add  
  ```verilog
  initial begin
      $dumpfile("wave.vcd");
      $dumpvars;
  end
  ```  
  in testbenches to inspect with **GTKWave**.

---

## License
This project is for educational purposes. You are free to use and modify it.  

