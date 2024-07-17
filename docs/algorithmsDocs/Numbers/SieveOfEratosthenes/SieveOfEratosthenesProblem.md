# Sieve of Eratosthenes

## Problem Description
The Sieve of Eratosthenes is an efficient algorithm to find all prime numbers up to a specified integer. It works by iteratively marking the multiples of each prime number starting from 2.

## Input
- A single integer `n`, which specifies the upper limit for the range of numbers to check for primality.

## Output
- A list of prime numbers up to and including `n`.

## Constraints
- \( n \geq 2 \)

## Examples
> **Input:**  
> 10  
>
> **Output:**  
> \[2, 3, 5, 7\]  
>
> **Explanation:**  
> The prime numbers up to 10 are 2, 3, 5, and 7.

> **Input:**  
> 20  
>
> **Output:**  
> \[2, 3, 5, 7, 11, 13, 17, 19\]  
>
> **Explanation:**  
> The prime numbers up to 20 are 2, 3, 5, 7, 11, 13, 17, and 19.

> **Input:**  
> 50  
>
> **Output:**  
> \[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47\]  
>
> **Explanation:**  
> The prime numbers up to 50 are 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, and 47.

> **Input:**  
> 2  
>
> **Output:**  
> \[2\]  
>
> **Explanation:**  
> The only prime number up to 2 is 2 itself.

> **Input:**  
> 100  
>
> **Output:**  
> \[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97\]  
>
> **Explanation:**  
> The prime numbers up to 100 are 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, and 97.
