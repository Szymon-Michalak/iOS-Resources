# Find Duplicate

## Problem Description
Write a function that accepts the name of a directory to scan, and returns an array of filenames that appear more than once in that directory or any of its subdirectories. Your function should scan all subdirectories, including subdirectories of subdirectories.

## Input
- A string representing the path to the directory to scan.

## Output
- An array of filenames that appear more than once in the specified directory and its subdirectories.

## Constraints
- The function should handle cases where the directory does not exist or is not accessible.
- The function should consider only the filenames, not their paths, for duplication.

## Example
> **Input:**  
> `directory: "/path/to/directory"`  
>
> **Output:**  
> `["file1.txt", "file2.jpg"]`  
>
> **Explanation:**  
> The function scans the directory `/path/to/directory` and all its subdirectories, finding that `file1.txt` and `file2.jpg` appear more than once.
