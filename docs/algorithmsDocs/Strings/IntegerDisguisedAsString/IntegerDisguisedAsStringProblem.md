# Integer Disguised as String

## Problem Description
Write a function that accepts a string and returns `true` if it contains only numbers, i.e., the digits 0 through 9.

## Input
- A single string.

## Output
- A boolean value: `true` if the string contains only digits 0 through 9, `false` otherwise.

## Constraints
- The input string may be of any length, including zero.
- The function should not consider leading zeros or large numbers as invalid as long as they contain only digits.

## Example
> **Input:**  
> "01010101"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "01010101" contains only digits.

> **Input:**  
> "123456789"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "123456789" contains only digits.

> **Input:**  
> "9223372036854775808"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "9223372036854775808" contains only digits.

> **Input:**  
> "1.01"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The string "1.01" contains a decimal point, which is not a digit.
