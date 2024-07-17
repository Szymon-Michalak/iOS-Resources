# Log a Message

## Problem Description
Write a logging function that accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date. 

Tip: It’s important that you add line breaks along with each message, otherwise the log will just become jumbled.

## Input
- A string representing the path to the log file.
- A string representing the new log message.

## Output
- The function should append the log message along with the current timestamp to the specified log file.

## Constraints
- The log message should be appended with a newline character.
- The function should handle cases where the log file does not exist and create it if necessary.
- The function should ensure that the log entry includes the current date and time in a readable format.

## Example
> **Input:**  
> `path: "/path/to/logfile.txt"`  
> `message: "New log entry"`  
>
> **Output:**  
> Log entry appended to the file with a timestamp  
>
> **Explanation:**  
> The log file at `/path/to/logfile.txt` will have a new entry appended that includes the current date and time followed by the message "New log entry".

> **Input:**  
> `path: "/path/to/existinglogfile.txt"`  
> `message: "Another log entry"`  
>
> **Output:**  
> Log entry appended to the file with a timestamp  
>
> **Explanation:**  
> The log file at `/path/to/existinglogfile.txt` will have a new entry appended that includes the current date and time followed by the message "Another log entry".
