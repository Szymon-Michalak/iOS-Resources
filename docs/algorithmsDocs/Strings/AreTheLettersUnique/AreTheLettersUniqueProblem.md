# Are the Letters Unique?

## Problem Description
Write a function that accepts a string as its only parameter and returns `true` if the string contains only unique letters, taking letter case into account. Non-letter characters should not be considered when determining uniqueness.

## Input
- A single string.

## Output
- A boolean value: `true` if the string contains only unique letters, considering letter case; otherwise, `false`.

## Constraints
- The function should consider letter case (e.g., 'A' and 'a' are different characters).
- Non-letter characters should be ignored.

## Example
> **Input:**  
> "No duplicates"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The letters in the string are unique when ignoring spaces and punctuation.

> **Input:**  
> "AaBbCc"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The letters 'A', 'a', 'B', 'b', 'C', and 'c' are all unique considering case sensitivity.

> **Input:**  
> "abcdefghijklmnopqrstuvwxyz"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> All the letters in the string are unique.

> **Input:**  
> "Hello, world"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The letters 'l' and 'o' appear more than once in the string.
