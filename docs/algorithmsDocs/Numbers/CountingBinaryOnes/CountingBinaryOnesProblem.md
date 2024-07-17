# Counting Binary Ones

## Problem Description
Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return `nil` for it.

## Input
- A single positive integer.

## Output
- An array of two elements:
  1. The next highest number with the same number of ones in its binary representation.
  2. The next lowest number with the same number of ones in its binary representation.
- If either the next highest or next lowest number is not possible, return `nil` for that element.

## Constraints
- The input will always be a positive integer.

## Example
> **Input:**  
> 12  
>
> **Output:**  
> (10, 17)  
>
> **Explanation:**  
> The binary representation of 12 is `1100`. The next highest number with two 1s is 17 (`10001`), and the next lowest is 10 (`1010`).

> **Input:**  
> 28  
>
> **Output:**  
> (26, 35)  
>
> **Explanation:**  
> The binary representation of 28 is `11100`. The next highest number with three 1s is 35 (`100011`), and the next lowest is 26 (`11010`).
