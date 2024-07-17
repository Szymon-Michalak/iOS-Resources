# Binary Reverse

## Problem Description
Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits. 

Tip: When you get the binary representation of a number, Swift will always use as few bits as possible – make sure you pad to eight binary digits before reversing.

## Input
- An unsigned 8-bit integer.

## Output
- An unsigned 8-bit integer which is the binary reverse of the input, padded to eight binary digits.

## Constraints
- The input is always an unsigned 8-bit integer (0-255).

## Example
> **Input:**  
> 32  
>
> **Output:**  
> 4  
>
> **Explanation:**  
> The binary representation of 32 is `00100000`. Reversed, it becomes `00000100`, which is 4 in decimal.

> **Input:**  
> 41  
>
> **Output:**  
> 148  
>
> **Explanation:**  
> The binary representation of 41 is `00101001`. Reversed, it becomes `10010100`, which is 148 in decimal.

> **Input:**  
> 4  
>
> **Output:**  
> 32  
>
> **Explanation:**  
> The binary representation of 4 is `00000100`. Reversed, it becomes `00100000`, which is 32 in decimal.

> **Input:**  
> 148  
>
> **Output:**  
> 41  
>
> **Explanation:**  
> The binary representation of 148 is `10010100`. Reversed, it becomes `00101001`, which is 41 in decimal.
