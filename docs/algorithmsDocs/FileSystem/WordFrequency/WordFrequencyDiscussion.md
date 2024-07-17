# Word Frequency in File - Solutions

## Approach 1: Using `components(separatedBy:)` and Filtering

### Description
This approach reads the entire contents of the file into a string, splits the string into words using `components(separatedBy:)` with whitespace and newline characters as separators, and then filters the resulting array to count occurrences of the specified word.

### Implementation

```swift
import Foundation

func wordFrequency(in filename: String, word: String) -> Int {
    guard let fileContents = try? String(contentsOfFile: filename) else { return 0 }
    
    let words = fileContents.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    let filteredWords = words.filter { $0 == word }
    
    return filteredWords.count
}
```

### Pros
- Simple and easy to implement.
- Uses standard library functions for string manipulation.

### Cons
- Does not handle punctuation attached to words (e.g., "Hello," is considered different from "Hello").
- Loads the entire file into memory, which may not be efficient for very large files.

## Approach 2: Using Regular Expressions (Discussion)

### Description
This approach uses regular expressions to match whole words, accounting for punctuation and other non-word characters. This can provide more accurate word frequency counts.

### Implementation (Pseudo-code)

```swift
import Foundation

func wordFrequency(in filename: String, word: String) -> Int {
    guard let fileContents = try? String(contentsOfFile: filename) else { return 0 }
    
    let pattern = "\\b\(word)\\b"
    let regex = try? NSRegularExpression(pattern: pattern, options: [])
    let matches = regex?.matches(in: fileContents, options: [], range: NSRange(location: 0, length: fileContents.utf16.count))
    
    return matches?.count ?? 0
}
```

### Pros
- More accurate word matching by using word boundaries in regular expressions.
- Handles punctuation and other non-word characters more effectively.

### Cons
- More complex implementation.
- Regular expressions can be computationally expensive for very large files.

## Edge Cases
- Non-existent file: The function should return 0 if the file does not exist.
- Empty file: The function should return 0 if the file is empty.
- Case sensitivity: The function should handle the exact case of the word as specified.

## Conclusion
The approach using `components(separatedBy:)` is simple and easy to implement but may not handle punctuation effectively. Using regular expressions provides more accurate word frequency counts by accounting for word boundaries and punctuation but is more complex. Understanding both methods allows for choosing the appropriate solution based on the specific requirements and constraints of the application.
