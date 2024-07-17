# Is A String A Palindrome

## Problem Description
Write a function that accepts a string as its only parameter and returns `true` if the string reads the same when reversed, ignoring case.

## Input
- A single string.

## Output
- A boolean value: `true` if the string is a palindrome, `false` otherwise.

## Constraints
- The comparison should ignore case.
- Only alphanumeric characters should be considered (ignore spaces, punctuation, etc.).

## Example
> **Input:**  
> "rotator"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "rotator" reads the same forwards and backwards.

> **Input:**  
> "Rats live on no evil star"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> Ignoring case and spaces, the string reads the same forwards and backwards.

> **Input:**  
> "Never odd or even"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> Ignoring case and spaces, the string does not read the same forwards and backwards.

> **Input:**  
> "Hello, world"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The string "Hello, world" does not read the same forwards and backwards, even ignoring case.
