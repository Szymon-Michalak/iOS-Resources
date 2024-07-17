# Find Longest Prefix

## Problem Description
Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.

## Input
- A single string containing multiple words separated by spaces.

## Output
- A string representing the longest prefix that all words share.

## Constraints
- The input string will contain at least one word.
- All words in the input string are separated by a single space.

## Example
> **Input:**  
> "flower flow flight"  
>
> **Output:**  
> "fl"  
>
> **Explanation:**  
> The longest common prefix among "flower", "flow", and "flight" is "fl".

> **Input:**  
> "dog racecar car"  
>
> **Output:**  
> ""  
>
> **Explanation:**  
> There is no common prefix among "dog", "racecar", and "car".

> **Input:**  
> "interspecies interstellar interstate"  
>
> **Output:**  
> "inters"  
>
> **Explanation:**  
> The longest common prefix among "interspecies", "interstellar", and "interstate" is "inters".

> **Input:**  
> "throne throne throne"  
>
> **Output:**  
> "throne"  
>
> **Explanation:**  
> All words are the same, so the longest common prefix is "throne".

> **Input:**  
> "throne thronee thrones"  
>
> **Output:**  
> "throne"  
>
> **Explanation:**  
> The longest common prefix among "throne", "thronee", and "thrones" is "throne".
