# Count the Numbers

## Problem Description
Write an extension for collections of integers that returns the number of times a specific digit appears in any of its numbers.

## Input
- A collection of integers.
- A specific digit (as a string) to count within the numbers of the collection.

## Output
- An integer representing the number of times the specified digit appears across all numbers in the collection.

## Constraints
- The collection will contain non-negative integers.
- The digit to be counted is a single character string representing a digit ('0'-'9').

## Example
> **Input:**  
> `[5, 15, 55, 515].challenge37(count: "5")`
>
> **Output:**  
> `6`
>
> **Explanation:**  
> The digit '5' appears 6 times in the numbers [5, 15, 55, 515].

> **Input:**  
> `[5, 15, 55, 515].challenge37(count: "1")`
>
> **Output:**  
> `2`
>
> **Explanation:**  
> The digit '1' appears 2 times in the numbers [5, 15, 55, 515].

> **Input:**  
> `[55555].challenge37(count: "5")`
>
> **Output:**  
> `5`
>
> **Explanation:**  
> The digit '5' appears 5 times in the number [55555].

> **Input:**  
> `[55555].challenge37(count: "1")`
>
> **Output:**  
> `0`
>
> **Explanation:**  
> The digit '1' does not appear in the number [55555].
