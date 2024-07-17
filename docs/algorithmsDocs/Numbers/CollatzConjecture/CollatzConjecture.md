# Collatz Conjecture

## Problem Description
Consider an algorithm that takes as input a positive integer \( n \). If \( n \) is even, the algorithm divides it by two, and if \( n \) is odd, the algorithm multiplies it by three and adds one. The algorithm repeats this until \( n \) becomes one. Your task is to simulate the execution of the algorithm for a given value of \( n \).

For example, the sequence for \( n = 3 \) is as follows:
\[ 3 \rightarrow 10 \rightarrow 5 \rightarrow 16 \rightarrow 8 \rightarrow 4 \rightarrow 2 \rightarrow 1 \]

## Input
- A single positive integer \( n \).

## Output
- A string that contains all values of \( n \) during the algorithm, separated by a single arrow surrounded by spaces " -> ".

## Constraints
- \( 1 \leq n \leq 10^6 \)

## Example
> **Input:**  
> 3  
>
> **Output:**  
> 3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1  
>
> **Explanation:**  
> Starting from 3, the sequence follows the rules: 3 is odd, so 3 * 3 + 1 = 10; 10 is even, so 10 / 2 = 5; and so on until it reaches 1.
