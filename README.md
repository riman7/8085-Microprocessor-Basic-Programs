# 8085 Microprocessor Basic Programs

This repository contains basic assembly language programs for the 8085 microprocessor. These programs cover various fundamental operations and problem-solving techniques useful for learning and understanding 8085 assembly programming.

## 📜 Overview
The programs in this repository demonstrate:
- Arithmetic operations (Addition, Subtraction, Multiplication, Division)
- Logical operations (AND, OR, XOR, NOT)
- Data transfer and manipulation
- Control flow using loops and conditional statements
- Memory handling and storage operations

Each program is implemented with proper comments to enhance readability and understanding.

## 📌 Example Problem
### **Finding the Square of Ten 8-bit Numbers**
**Problem Statement:**
Write an assembly language program for the 8085 microprocessor to find the square of ten 8-bit numbers that are less than or equal to `0FH`. The numbers are stored in memory starting from `C090H`. The results should be stored at the end of the source table.

**Solution Approach:**
- Load numbers from memory.
- Compute the square of each number.
- Store the result at the end of the source table.
- Use a loop to repeat the process for ten numbers.

## 📂 Repository Structure
```
8085-Microprocessor-Basic-Programs/
│── README.md
│── Program1.asm  # Square of numbers ≤ 0FH
│── Program2.asm  # Addition of two 8-bit numbers
│── Program3.asm  # Factorial of a number
│── ...
└── Resources/    # Additional references and documentation
```

## ⚙️ How to Run the Programs
1. Use an 8085 simulator like **GNUSim8085**, **Emu8085**, or **Intel 8085 Simulator**.
2. Load the `.asm` file into the simulator.
3. Assemble and execute the program.
4. Observe the results in memory or registers.

## 📖 Resources
- [8085 Instruction Set](https://en.wikipedia.org/wiki/Intel_8085)
- [8085 Microprocessor Architecture](https://www.tutorialspoint.com/microprocessor/microprocessor_8085_architecture.htm)
- [GNUSim8085 Download](http://gnusim8085.org/)

## 🛠️ Contributions
Contributions are welcome! If you want to add new programs or improve existing ones, feel free to submit a pull request.

## 📜 License
This project is open-source and available under the **MIT License**.

---
Happy Coding! 😊
