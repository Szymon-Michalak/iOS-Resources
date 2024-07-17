# Condense Whitespace

## Problem Description
Write a function that returns a string with any consecutive spaces replaced with a single space. The function `removeExtraSpaces` should remove extra spaces between characters in a string, keeping only one space where multiple spaces were present.

## Input
- A single string.

## Output
- A string with any consecutive spaces replaced with a single space.

## Constraints
- The input string may contain any number of spaces, including leading, trailing, and multiple consecutive spaces between words.

## Example
> **Input:**  
> ```  
> "a   b   c"  
> ```  
>
> **Output:**  
> ```  
> "a b c"  
> ```  
>
> **Explanation:**  
> The input string has multiple consecutive spaces between 'a', 'b', and 'c'. These are replaced with single spaces.

> **Input:**  
> ```  
> "    a"  
> ```  
>
> **Output:**  
> ```  
> " a"  
> ```  
>
> **Explanation:**  
> The input string has leading spaces which are condensed to a single space before 'a'.

> **Input:**  
> ```  
> "abc"  
> ```  
>
> **Output:**  
> ```  
> "abc"  
> ```  
>
> **Explanation:**  
> The input string has no extra spaces, so it remains unchanged.
