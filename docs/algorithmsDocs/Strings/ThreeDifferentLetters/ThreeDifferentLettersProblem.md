# Three Different Letters

## Problem Description
Write a function that accepts two strings and returns `true` if they are identical in length but have no more than three different letters, taking case and string order into account.

## Input
- Two strings.

## Output
- A boolean value: `true` if the strings are identical in length but have no more than three different letters, `false` otherwise.

## Constraints
- The function should take case and string order into account.
- Both strings must be of the same length to be considered.

## Example
> **Input:**  
> "Clamp"  
> "Cramp"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The strings "Clamp" and "Cramp" have the same length and only one different letter ('l' in "Clamp" and 'r' in "Cramp").

> **Input:**  
> "Clamp"  
> "Crams"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The strings "Clamp" and "Crams" have the same length and exactly three different letters ('l', 'p' in "Clamp" and 'r', 's' in "Crams").

> **Input:**  
> "Clamp"  
> "Grams"  
>
> **Output:**  
> true  
>
> **Explanation:**  
> The strings "Clamp" and "Grams" have the same length and exactly three different letters ('C', 'l', 'p' in "Clamp" and 'G', 'r', 's' in "Grams").

> **Input:**  
> "Clamp"  
> "Grans"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The strings "Clamp" and "Grans" have more than three different letters.

> **Input:**  
> "Clamp"  
> "Clam"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The strings "Clamp" and "Clam" do not have the same length.

> **Input:**  
> "clamp"  
> "maple"  
>
> **Output:**  
> false  
>
> **Explanation:**  
> The strings "clamp" and "maple" have more than three different letters and do not meet the criteria.
