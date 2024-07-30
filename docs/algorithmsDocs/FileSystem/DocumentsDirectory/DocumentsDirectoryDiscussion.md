# Documents Directory - Solutions

## Approach 1: Using FileManager's `urls(for:in:)` Method
### Description
This approach uses the `FileManager` class's `urls(for:in:)` method to retrieve the URL for the user's Documents directory. The method returns an array of URLs, and we select the first one. If the directory is not accessible or does not exist, the function returns `nil`.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func getDocumentsDirectory() -> URL? {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths.first
}
```

### Pros
- Simple and concise implementation using built-in `FileManager` methods.
- Minimal code required to retrieve the Documents directory URL.

### Cons
- Limited error handling; assumes the first URL is always the correct one.

## Conclusion
The provided approach offers a straightforward solution to retrieve the URL for the user's Documents directory using the `FileManager` class. The function handles the case where the directory might not exist by returning `nil` if the array of URLs is empty. This solution is efficient and leverages native Swift capabilities, making it suitable for most use cases where accessing the Documents directory is required.
