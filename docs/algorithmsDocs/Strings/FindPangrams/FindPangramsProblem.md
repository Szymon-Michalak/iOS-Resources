# Find Pangrams

## Problem Description
Write a function that returns `true` if it is given a string that is an English pangram, ignoring letter case. 

Tip: A pangram is a string that contains every letter of the alphabet at least once.

## Input
- A single string.

## Output
- A boolean value: `true` if the given string is a pangram, `false` otherwise.

## Constraints
- The function should ignore letter case when checking for a pangram.

## Example
> **Input:**  
> "The quick brown fox jumps over the lazy dog"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The input string contains every letter of the English alphabet at least once.

> **Input:**  
> "The quick brown fox jumped over the lazy dog"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The input string is missing the letter 's', so it is not a pangram.
