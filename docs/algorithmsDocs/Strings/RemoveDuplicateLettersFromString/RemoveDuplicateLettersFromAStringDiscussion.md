# Find Duplicate Letters from a String - Solutions

## Approach 1: Using a Set to Track Seen Characters

### Description
This approach uses a `Set` to track characters that have already been seen in the input string. As we iterate over the string, we add each character to the set and include it in the result string only if it hasn't been seen before.

### Implementation

```swift
func removeDuplicateLetters(from input: String) -> String {
    var seen = Set<Character>()
    return input.filter { seen.insert($0).inserted }
}
```

### Pros
- Efficient in terms of time complexity, as each insertion and lookup in the set is O(1).
- Concise and easy to understand.

### Cons
- Uses additional memory to store the set of seen characters.

## Approach 2: Using Higher-Order Functions

### Description
This approach leverages Swift's `reduce` function to build the result string by iterating over each character and accumulating the result only if the character hasn't been seen before.

### Implementation

```swift
func removeDuplicateLetters(from input: String) -> String {
    var seen = Set<Character>()
    return input.reduce("") { result, character in
        if seen.insert(character).inserted {
            return result + String(character)
        } else {
            return result
        }
    }
}
```

### Pros
- Uses Swift's powerful higher-order functions for a functional programming style.
- Avoids explicitly writing loops, making the code more declarative.

### Cons
- Slightly less efficient due to the repeated string concatenation in the `reduce` function.

## Approach 3: Using Index-Based Iteration (Discussion)

### Description
An alternative approach could involve manually iterating over the string using indices, building the result string step-by-step. This approach would be less idiomatic in Swift but can be educational to understand lower-level string manipulation.

### Pros
- Provides a deeper understanding of string manipulation at the character level.

### Cons
- More verbose and error-prone.
- Less efficient and less readable compared to using sets or higher-order functions.

## Conclusion
The approach using a set to track seen characters is the most efficient and concise method for removing duplicate letters from a string. It balances readability, efficiency, and simplicity. The higher-order function approach provides a more functional programming style, while the index-based iteration method, though educational, is less practical for real-world use.
