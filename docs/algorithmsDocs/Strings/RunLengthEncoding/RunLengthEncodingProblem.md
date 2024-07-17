# Run-Length Encoding

## Problem Description
Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.

Tip: This approach is used in a simple lossless compression technique called run-length encoding.

## Input
- A single string.

## Output
- A string representing the run-length encoding of the input string.

## Constraints
- The function should take letter case into account (e.g., 'a' and 'A' are considered different characters).

## Example
> **Input:**  
> "aabbcc"  
>
> **Output:**  
> "a2b2c2"  
>
> **Explanation:**  
> The input string "aabbcc" has 'a' repeated twice, followed by 'b' repeated twice, followed by 'c' repeated twice.

> **Input:**  
> "aaabaaabaaa"  
>
> **Output:**  
> "a3b1a3b1a3"  
>
> **Explanation:**  
> The input string "aaabaaabaaa" has 'a' repeated thrice, followed by 'b' repeated once, followed by 'a' repeated thrice, followed by 'b' repeated once, followed by 'a' repeated thrice.

> **Input:**  
> "aaAAaa"  
>
> **Output:**  
> "a2A2a2"  
>
> **Explanation:**  
> The input string "aaAAaa" has 'a' repeated twice, followed by 'A' repeated twice, followed by 'a' repeated twice.
