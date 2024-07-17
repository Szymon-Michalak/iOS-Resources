# Does One String Contain Another?

## Problem Description
Write your own version of the `contains()` method on `String` that ignores letter case, and does not use the existing `contains()` method.

## Input
- The function should be an extension on `String` that accepts a string as a parameter.

## Output
- A boolean value: `true` if the original string contains the given substring, ignoring letter case; otherwise, `false`.

## Constraints
- The comparison should ignore letter case.

## Example
> **Input:**  
> "Hello, world"  
> "Hello"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The original string "Hello, world" contains the substring "Hello", ignoring case.

> **Input:**  
> "Hello, world"  
> "WORLD"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The original string "Hello, world" contains the substring "WORLD", ignoring case.

> **Input:**  
> "Hello, world"  
> "Goodbye"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The original string "Hello, world" does not contain the substring "Goodbye".
