# New JPEGs

## Problem Description
Write a function that accepts a path to a directory and returns an array of all JPEGs that have been created in the last 48 hours.

Tip #1: For the purpose of this task, just looking for “.jpg” and “.jpeg” file extensions is sufficient.  
Tip #2: For this challenge, assume time is regular and constant, i.e., the user has not changed their timezone or moved into or out from daylight savings.  
Tip #3: Use the terminal command `touch -t YYYYMMDDHHMM somefile.jpg` to adjust the creation time of a file, e.g., `touch -t 201612250101`.

## Input
- A string representing the path to a directory.

## Output
- An array of filenames representing JPEG files that were created in the last 48 hours.

## Constraints
- The function should handle cases where the directory does not exist or is not accessible.
- Only files with ".jpg" and ".jpeg" extensions should be considered.
- The creation time of files should be checked to determine if they were created within the last 48 hours.

## Example
> **Input:**  
> `path: "/path/to/directory"`  
>
> **Output:**  
> `["new_image1.jpg", "new_image2.jpeg"]`  
>
> **Explanation:**  
> The function scans the directory `/path/to/directory` and returns an array of filenames for JPEG files that were created in the last 48 hours.
