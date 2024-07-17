# String is Rotated

## Problem Description
Write a function that accepts two strings and returns `true` if one string is a rotation of the other, taking letter case into account.

Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

## Input
- Two strings.

## Output
- A boolean value: `true` if one string is a rotation of the other, `false` otherwise.

## Constraints
- The function should consider letter case (e.g., 'A' is different from 'a').

## Example
> **Input:**  
> "abcde"  
> "eabcd"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "eabcd" is a rotation of "abcde" by one character.

> **Input:**  
> "abcde"  
> "cdeab"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The string "cdeab" is a rotation of "abcde" by three characters.

> **Input:**  
> "abcde"  
> "abced"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The string "abced" is not a rotation of "abcde".

> **Input:**  
> "abc"  
> "a"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The strings "abc" and "a" do not have the same length, so one cannot be a rotation of the other.
