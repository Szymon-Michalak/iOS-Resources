# Word Frequency in File

## Problem Description
Write a function that accepts a filename on disk, loads it into a string, then returns the frequency of a word in that string, taking letter case into account. How you define “word” is worth considering carefully.

## Input
- A string representing the path to the file.
- A string representing the word to search for.

## Output
- An integer representing the frequency of the word in the file.

## Constraints
- The function should take letter case into account when counting the word frequency.
- The definition of "word" should be carefully considered, possibly accounting for punctuation and boundaries.

## Example
> **Input:**  
> filename: "path/to/file.txt"  
> word: "Hello"  
>
> **Output:**  
> 1  
>
> **Explanation:**  
> The word "Hello" appears once in the file.

> **Input:**  
> filename: "path/to/file.txt"  
> word: "Hello,"  
>
> **Output:**  
> 0  
>
> **Explanation:**  
> The word "Hello," (with a comma) does not appear in the file.

> **Input:**  
> filename: "path/to/file.txt"  
> word: "Spain"  
>
> **Output:**  
> 1  
>
> **Explanation:**  
> The word "Spain" appears once in the file.

> **Input:**  
> filename: "path/to/file.txt"  
> word: "in"  
>
> **Output:**  
> 1  
>
> **Explanation:**  
> The word "in" appears once in the file.

> **Input:**  
> filename: "path/to/file.txt"  
> word: "I’m"  
>
> **Output:**  
> 1  
>
> **Explanation:**  
> The word "I’m" (with an apostrophe) appears once in the file.
