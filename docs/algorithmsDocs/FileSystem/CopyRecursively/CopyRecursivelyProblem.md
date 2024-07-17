# Copy Recursively

## Problem Description
Write a function that accepts two paths: the first should point to a directory to copy, and the second should be where the directory should be copied to. The function should return `true` if the directory and all its contents were copied successfully, and `false` if the copy failed or the user specified something other than a directory.

## Input
- Two strings:
  1. `sourcePath`: The path to the directory to copy.
  2. `destinationPath`: The path where the directory should be copied to.

## Output
- A boolean value:
  - `true` if the directory and all its contents were copied successfully.
  - `false` if the copy failed or the input paths were not directories.

## Constraints
- Both `sourcePath` and `destinationPath` will be valid paths.
- The function should handle any errors that occur during the copy process.
- The `destinationPath` should not already contain a directory with the same name as the source directory.

## Example
> **Input:**  
> `sourcePath`: "/path/to/sourceDirectory"  
> `destinationPath`: "/path/to/destinationDirectory"  
>
> **Output:**  
> `true` (if the copy succeeded)  
> `false` (if the copy failed)  
>
> **Explanation:**  
> The function attempts to copy the directory from `/path/to/sourceDirectory` to `/path/to/destinationDirectory`. If the copy is successful, it returns `true`. If there is an error or if either path is not a directory, it returns `false`.

> **Input:**  
> `sourcePath`: "/path/to/nonExistentDirectory"  
> `destinationPath`: "/path/to/destinationDirectory"  
>
> **Output:**  
> `false`  
>
> **Explanation:**  
> The function returns `false` because the `sourcePath` does not point to an existing directory.
