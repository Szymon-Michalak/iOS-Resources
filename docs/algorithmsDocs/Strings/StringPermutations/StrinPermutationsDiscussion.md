# String Permutations - Solutions

## Approach 1: Recursive Permutation Generation

### Description
This approach uses recursion to generate all permutations of a given string. The idea is to fix each character of the string at the first position, then recursively generate all permutations of the remaining characters. The base case for the recursion is an empty string, which returns an array with an empty string.

### Implementation

```swift
func stringPermutations(_ str: String) -> [String] {
    if str.isEmpty {
        return [""]
    }
    
    var permutations = [String]()
    for (index, char) in str.enumerated() {
        var remaining = str
        let removedChar = remaining.remove(at: remaining.index(remaining.startIndex, offsetBy: index))
        let subPermutations = stringPermutations(remaining)
        permutations += subPermutations.map { "\(removedChar)\($0)" }
    }
    
    return permutations
}
```

### Pros
- Simple and intuitive implementation.
- Demonstrates the power of recursion for solving permutation problems.

### Cons
- Not efficient for very large strings due to the large number of recursive calls and resulting permutations.
- Can lead to a stack overflow for very long strings due to deep recursion.

## Approach 2: Iterative Permutation Generation (Discussion)

### Description
An iterative approach to generate permutations uses a data structure like a queue to build permutations step by step. This approach can be more memory efficient and avoids the deep recursion issue.

### Implementation (Pseudo-code)
1. Start with an empty permutation and enqueue it.
2. Dequeue a permutation, and for each character of the input string, insert it at every possible position to generate new permutations.
3. Enqueue all newly generated permutations and repeat until all characters are processed.

### Pros
- Avoids deep recursion and potential stack overflow.
- Can be more efficient in terms of memory usage for large strings.

### Cons
- More complex implementation compared to the recursive approach.
- May require additional data structures like a queue.

## Approach 3: Using Swift's Built-in Functions (Discussion)

### Description
While the problem restricts the use of certain methods, it’s worth mentioning that Swift’s `nextPermutation` and other combinatorial functions can be used to generate permutations.

### Pros
- Simplifies code by leveraging Swift’s powerful standard library functions.
- Optimized for performance and memory usage.

### Cons
- Does not adhere to the problem constraint of implementing from scratch.
- Less educational for understanding the underlying algorithm.

## Edge Cases
- Empty string: The function should return an array with an empty string.
- Single character: The function should return an array with the character itself.
- Duplicate characters: The function should handle strings with duplicate characters correctly.

## Conclusion
The recursive approach to generating permutations is simple and intuitive, making it a good choice for understanding the concept of permutations. However, for larger strings, an iterative approach can be more efficient and avoids the issues of deep recursion. Understanding both methods provides valuable insights into different ways to solve permutation problems and handle combinatorial generation in programming.
