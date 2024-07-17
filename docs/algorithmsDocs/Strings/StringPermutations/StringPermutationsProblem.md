# String Permutations

## Problem Description
Write a function that prints all possible permutations of a given input string.

Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.

## Input
- A single string.

## Output
- An array of strings, each representing a permutation of the input string.

## Constraints
- The function should handle strings of varying lengths.
- The order of the permutations in the output array does not matter.

## Example
> **Input:**  
> "a"  
>
> **Output:**  
> \["a"\]  
>
> **Explanation:**  
> The only permutation of the string "a" is "a" itself.

> **Input:**  
> "ab"  
>
> **Output:**  
> \["ab", "ba"\]  
>
> **Explanation:**  
> The permutations of the string "ab" are "ab" and "ba".

> **Input:**  
> "abc"  
>
> **Output:**  
> \["abc", "acb", "bac", "bca", "cab", "cba"\]  
>
> **Explanation:**  
> The permutations of the string "abc" are "abc", "acb", "bac", "bca", "cab", and "cba".

> **Input:**  
> "wombat"  
>
> **Output:**  
> (720 permutations)  
>
> **Explanation:**  
> The string "wombat" has 720 permutations, as it has 6 unique characters, and \(6! = 720\).
