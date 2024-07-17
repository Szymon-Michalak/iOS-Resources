# Remove Duplicate Letters from a String

## Problem Description
Write a function that accepts a string as its input and returns the same string with duplicate letters removed.

Tip: If you can solve this challenge without a `for-in` loop, you can consider it “tricky” rather than “easy”.

## Input
- A single string.

## Output
- A string with duplicate letters removed, keeping only the first occurrence of each letter.

## Constraints
- The function should preserve the order of the first occurrences of the letters.

## Example
> **Input:**  
> "wombat"  
>
> **Output:**  
> "wombat"  
>
> **Explanation:**  
> The string "wombat" has no duplicate letters, so it remains unchanged.

> **Input:**  
> "hello"  
>
> **Output:**  
> "helo"  
>
> **Explanation:**  
> The string "hello" has duplicate 'l' characters, so the second 'l' is removed.

> **Input:**  
> "Mississippi"  
>
> **Output:**  
> "Misp"  
>
> **Explanation:**  
> The string "Mississippi" has multiple duplicate characters. After removing duplicates, the resulting string is "Misp".
