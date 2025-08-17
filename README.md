# **4-Bit Arithmetic Logic Unit (ALU)**
A 4-bit ALU designed in Verilog that performs basic arithmetic and logical operations on two 4-bit inputs.
![4 Bit ALU](https://github.com/szyfrowac/4-Bit-ALU/blob/main/logisim-schematic.png)

## 📋 Features
This ALU can perform the following operations:

### Arithmetic Operations:
1. Addition
2. Subtraction

### Logical Operations:

1. AND
2. OR

## ⚙️ How It Works
The operation of the ALU is controlled by a 2-bit opcode (S1, S0). Based on the value of this opcode, the ALU selects and performs one of the four available operations on the two 4-bit inputs, A and B. The result is a 4-bit output Y. The circuit also includes a CarryOut flag for arithmetic operations.

## 📌 Pin Description
| Pin Name  | Direction | Width | Description                                |
|-----------|-----------|-------|--------------------------------------------|
| A         | Input     | 4-bit | First 4-bit data input                     |
| B         | Input     | 4-bit | Second 4-bit data input                    |
| S         | Input     | 2-bit | Opcode to select the operation              |
| Y         | Output    | 4-bit | 4-bit result of the operation              |
| CarryOut  | Output    | 1-bit | Carry-out flag for arithmetic operations   |

## 🧮 Function Table
| S[1] | S[0] | Operation     | Function     |
|------|------|---------------|--------------|
| 0    | 0    | Addition      | Y = A + B    |
| 0    | 1    | Subtraction   | Y = A - B    |
| 1    | 0    | Logical AND   | Y = A & B    |
| 1    | 1    | Logical OR    | Y = A \| B   |

## 🛠️ Implementation Details
The ALU is designed using fundamental logic gates. The arithmetic unit is built around a 4-bit full adder, which is also used for subtraction via 2's complement. The logical unit consists of basic gates (AND, OR). A multiplexer, controlled by the opcode, selects the final output from each of the arithmetic or logical unit.
![Waveform](https://github.com/szyfrowac/4-Bit-ALU/blob/main/waveform.png) 


## 💻 How to Simulate
1. Clone the repository:

```bash
  git clone https://github.com/szyfrowac/4-Bit-ALU.git
```

2. Open the project in a Verilog simulator (like ModelSim, Vivado, or an online tool like EDA Playground).
3. Compile the source files (alu.v, testbench.v).
4. Run the simulation using the provided testbench file (testbench.v).
5. Observe the waveform to verify that the output Y and flags (CarryOut) are correct for all opcode combinations.

## 🧑‍💻 Author
Bala Phanikar Challa - [szyfrowac](https://github.com/szyfrowac/)

## 📄 License
This project is licensed under the MIT License - see the LICENSE.md file for details.
