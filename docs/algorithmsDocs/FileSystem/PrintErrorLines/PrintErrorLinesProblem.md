# Print Error Lines

## Problem Description
Write a function that accepts a path to a log file on disk and returns the number of lines that start with “[ERROR]”. The log file could be as large as 10GB, but it may also not exist.

## Input
- A string representing the path to a log file.

## Output
- An integer representing the number of lines that start with “[ERROR]”.

## Constraints
- The function should handle cases where the log file does not exist and return 0 in such cases.
- The function should efficiently handle large files, potentially up to 10GB in size.

## Example
**Example 1:**

> **Input:**  
> Log file: `path/to/logfile.log`  
> Contents of Log File:
> ```
> [INFO] Information message
> [ERROR] Error message 1
> [INFO] Another information message
> [ERROR] Error message 2
> ```
>
> **Output:**  
> 2  
>
> **Explanation:**  
> The log file contains 2 lines that start with “[ERROR]”.

**Example 2:**

> **Input:**  
> Log file: `path/to/logfile.log`  
> Contents of Log File:
> ```
> [INFO] Information message
> [INFO] Another information message
> ```
>
> **Output:**  
> 0  
>
> **Explanation:**  
> The log file contains no lines that start with “[ERROR]”.

**Example 3:**

> **Input:**  
> Log file: `path/to/nonexistent.log`  
> Contents of Log File: (File does not exist)
>
> **Output:**  
> 0  
>
> **Explanation:**  
> The log file does not exist, so the function returns 0.
