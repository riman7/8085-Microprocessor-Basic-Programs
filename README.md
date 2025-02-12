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

## 📂 List of Programs  

| S.N.  | Problem Statement | File Link |
|----|------------------|-----------|
| 1  | Write an assembly language program for 8085 to find the square of ten 8-bit numbers which are less than or equals to 0FH, stored from memory location C090H, Store the result from the end of the source table. | [5_finding_square.asm](5_finding_square.asm) |
| 2  |There are two tables holding twenty data whose starting address is 9000H and 9020H respectively. WAP to add the content of the first table with the content of the second table having the same array index. Store sum and carry into the third and fourth table indexing from 9040H and 9060H respectively. | [square_numbers.asm](10_two_table_addition_and_store_sum_and_carry_in_table.asm) |
| 3  | Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050H. Store the largest byte and smallest byte in C070H and C071H respectively. | [7_finding_smallest_and_greatest.asm](7_finding_smallest_and_greatest.asm) |
| 4  | Count odd and even parity numbers from 150 data bytes stored consecutively starting at memory location C050H Even parity count is stored at D000H and odd parity count is stored at D001H. | [8_count_odd_and_even_parity.asm](8_count_odd_and_even_parity.asm) |
| 5  | There are 40 8-bit numbers in a table with address starting from 9090H, Write a program in 8085 to transfer these numbers to another table with address from A010H if lower nibble of a number is greater than higher nibble, Otherwise ;transfer by setting bit D2 and resetting bit D6. | [9_compare_upper_and_lower_nibble_and_table_transfer.asm](9_compare_upper_and_lower_nibble_and_table_transfer.asm) |


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
