# Template

## Problem Description
Write a function that accepts a directory path and converts all image files in that directory to PNG format. The function should handle JPEG and JPG files, converting them to PNG and saving them with the same name but a `.png` extension. If the directory is empty or contains no image files, the function should return an appropriate message.

## Input
- A string representing the path to a directory.

## Output
- A list of filenames that were converted to PNG format.
- If no files were converted, return a message indicating that no files were converted.

## Constraints
- The function should handle directories that may be empty or contain no convertible image files.
- The directory path will be a valid path to an existing directory.
- The function should only convert files with `.jpg`, `.jpeg`, or `.JPG` and `.JPEG` extensions.

## Example
> **Input:**  
> Directory: `/path/to/your/directory`  
> Contents of Directory:  
> - `image1.jpg`  
> - `image2.jpeg`  
> - `image3.png`  
> 
> **Output:**  
> Converted Files:  
> - `image1.png`  
> - `image2.png`  
>
> **Explanation:**  
> The files `image1.jpg` and `image2.jpeg` are converted to `image1.png` and `image2.png`. The file `image3.png` is already in PNG format and is not converted.

> **Input:**  
> Directory: `/path/to/empty/directory`  
> Contents of Directory: None  
> 
> **Output:**  
> No files converted (empty directory)  
>
> **Explanation:**  
> The directory is empty, so no files are converted.
