# Find Executables

## Problem Description
Write a function that accepts the name of a directory to scan and returns an array containing the names of any executable files in that directory.

## Input
- A string representing the path to the directory to scan.

## Output
- An array of filenames that are executable in the specified directory.

## Constraints
- The function should handle cases where the directory does not exist or is not accessible.
- The function should only consider files that have executable permissions.

## Example
> **Input:**  
> `directory: "/path/to/directory"`  
>
> **Output:**  
> `["script.sh", "app.exe", "run"]`  
>
> **Explanation:**  
> The function scans the directory `/path/to/directory` and returns an array of filenames that are executable, such as `script.sh`, `app.exe`, and `run`.
