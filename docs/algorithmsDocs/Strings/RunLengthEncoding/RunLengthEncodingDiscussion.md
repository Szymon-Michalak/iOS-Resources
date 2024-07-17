# Run-Length Encoding - Solutions

## Approach 1: Iterative Run-Length Encoding

### Description
This approach iterates through the input string and counts consecutive occurrences of each character. When the character changes, the count and character are appended to the result string. This process continues until the end of the string.

### Implementation

```swift
func runLengthEncode(_ input: String) -> String {
    guard !input.isEmpty else { return "" }

    var encodedString = ""
    var count = 1
    let characters = Array(input)

    for i in 1..<characters.count {
        if characters[i] == characters[i - 1] {
            count += 1
        } else {
            encodedString += "\(characters[i - 1])\(count)"
            count = 1
        }
    }

    encodedString += "\(characters.last!)\(count)"
    return encodedString
}
```

### Pros
- Straightforward and easy to understand.
- Efficient in terms of time complexity, O(n), where n is the length of the input string.

### Cons
- Requires converting the string to an array of characters, which uses additional memory.
- Less concise compared to some higher-order function approaches.

## Approach 2: Using Higher-Order Functions (Discussion)

### Description
An alternative approach could involve using higher-order functions like `reduce` to build the run-length encoded string. This can make the code more concise and expressive.

### Implementation (Pseudo-code)

```swift
func runLengthEncode(_ input: String) -> String {
    guard !input.isEmpty else { return "" }

    var count = 1
    return input.enumerated().reduce("") { result, pair in
        let (index, char) = pair
        if index > 0 && char == input[input.index(input.startIndex, offsetBy: index - 1)] {
            count += 1
            return result
        } else {
            let previousChar = index > 0 ? input[input.index(input.startIndex, offsetBy: index - 1)] : char
            let countStr = index > 0 ? "\(previousChar)\(count)" : ""
            count = 1
            return result + countStr
        }
    } + "\(input.last!)\(count)"
}
```

### Pros
- Concise and expressive, leveraging Swift's higher-order functions.
- Can be easier to read for those familiar with functional programming concepts.

### Cons
- More complex than the iterative approach.
- May be less efficient due to repeated string concatenation.

## Edge Cases
- Empty string: The function should return an empty string.
- Single character: The function should return the character followed by `1`.
- Strings with no repeated characters: The function should return each character followed by `1`.

## Conclusion
The iterative approach to run-length encoding is simple, efficient, and easy to understand. It provides a straightforward way to encode strings with repeated characters. The higher-order function approach, while more concise, can be more complex and less efficient. Understanding both methods provides valuable insights into different ways to handle string processing and encoding tasks.
