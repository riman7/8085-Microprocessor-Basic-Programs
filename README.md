# 8085 Microprocessor Basic Programs

This repository contains basic assembly language programs for the 8085 microprocessor. These programs cover various fundamental operations and problem-solving techniques useful for learning and understanding 8085 assembly programming.

---

## 📂 List of Programs  

| S.N.  | Problem Statement | File Link |
|----|------------------|-----------|
| 1  | Write an assembly language program for 8085 to find the square of ten 8-bit numbers which are less than or equal to 0FH, stored from memory location C090H, Store the result from the end of the source table. | [5_finding_square.asm](5_finding_square.asm) |
| 2  | Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050H. Store the largest byte and smallest byte in C070H and C071H respectively. | [7_finding_smallest_and_greatest.asm](7_finding_smallest_and_greatest.asm) |
| 3  | Count odd and even parity numbers from 150 data bytes stored consecutively starting at memory location C050H Even parity count is stored at D000H and odd parity count is stored at D001H. | [8_count_odd_and_even_parity.asm](8_count_odd_and_even_parity.asm) |
| 4  | There are 40 8-bit numbers in a table with an address starting from 9090H, write a program in 8085 to transfer these numbers to another table with an address from A010H if the lower nibble of a number is greater than the higher nibble, Otherwise transfer by setting bit D2 and resetting bit D6. | [9_compare_upper_and_lower_nibble.asm](9_compare_upper_and_lower_nibble_and_table_transfer.asm) |
| 5  | There are two tables holding twenty data whose starting address is 9000H and 9020H respectively. WAP to add the content of the first table with the content of the second table having the same array index. Store sum and carry into the third and fourth table indexing from 9040H and 9060H respectively. | [10_two_table_addition_and_store_sum_and_carry.asm](10_two_table_addition_and_store_sum_and_carry_in_table.asm) |

---

## 🛠️ Contributions
Contributions are welcome! If you want to add new programs or improve existing ones, feel free to submit a pull request.

---
Happy Coding! 😊
