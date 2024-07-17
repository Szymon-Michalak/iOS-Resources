# Print Last Lines

## Problem Description
Write a function that accepts a filename on disk and a number `N`, then prints the last `N` lines in reverse order, all on a single line separated by commas.

## Input
- A string representing the path to the input file.
- An integer `N` representing the number of lines to print in reverse order.

## Output
- A single string with the last `N` lines from the file in reverse order, separated by commas.

## Constraints
- If `N` is 0, the output should be an empty string.
- If the file contains fewer than `N` lines, all lines should be printed in reverse order.

## Example
> **Input:**  
> `inputFile.txt`  
> 3  
>
> **Output:**  
> `"Twelfth Night, Othello, Macbeth"`  
>
> **Explanation:**  
> The last 3 lines of the file, in reverse order, are "Twelfth Night", "Othello", and "Macbeth".

> **Input:**  
> `inputFile.txt`  
> 100  
>
> **Output:**  
> `"Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony And Cleopatra"`  
>
> **Explanation:**  
> The file contains fewer than 100 lines, so all lines are printed in reverse order.

> **Input:**  
> `inputFile.txt`  
> 0  
>
> **Output:**  
> `""`  
>
> **Explanation:**  
> `N` is 0, so the output is an empty string.
