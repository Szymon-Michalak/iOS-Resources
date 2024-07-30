# Copy Recursively - Solutions

## Approach 1: FileManager's `copyItem` Method
### Description
This approach uses the `FileManager` class's `copyItem(at:to:)` method to recursively copy the contents of the source directory to the destination directory. It checks for the existence of the source directory, ensures the destination directory does not already exist, and then performs the copy operation.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func copyDirectory(from source: String, to destination: String) -> Bool {
    let fileManager = FileManager.default
    var isDirectory: ObjCBool = false

    guard fileManager.fileExists(atPath: source, isDirectory: &isDirectory), isDirectory.boolValue else {
        return false
    }
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)

    do {
        try fileManager.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print("Error copying directory from \(sourceURL.lastPathComponent) to \(destinationURL.lastPathComponent): \(error.localizedDescription)")
        return false
    }
    return true
}
```

### Pros
- Simple and straightforward implementation using built-in `FileManager` methods.
- Minimal code required to achieve directory copy functionality.

### Cons
- `copyItem(at:to:)` throws an error if the destination directory already exists, which needs to be handled explicitly.
- Limited error handling and logging, making it less robust for large-scale operations.

## Approach 2: Recursive Copy with Custom Error Handling
### Description
This approach uses a recursive method to manually copy each file and subdirectory from the source to the destination. It provides more granular control over the copying process and better error handling, ensuring more robustness.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func copyDirectoryRecursive(from source: String, to destination: String) -> Bool {
    let fileManager = FileManager.default
    var isDirectory: ObjCBool = false

    guard fileManager.fileExists(atPath: source, isDirectory: &isDirectory), isDirectory.boolValue else {
        return false
    }

    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)

    do {
        try fileManager.createDirectory(at: destinationURL, withIntermediateDirectories: true, attributes: nil)
        let items = try fileManager.contentsOfDirectory(atPath: source)
        
        for item in items {
            let sourceItemURL = sourceURL.appendingPathComponent(item)
            let destinationItemURL = destinationURL.appendingPathComponent(item)
            var isDir: ObjCBool = false
            fileManager.fileExists(atPath: sourceItemURL.path, isDirectory: &isDir)

            if isDir.boolValue {
                if !copyDirectoryRecursive(from: sourceItemURL.path, to: destinationItemURL.path) {
                    return false
                }
            } else {
                do {
                    try fileManager.copyItem(at: sourceItemURL, to: destinationItemURL)
                } catch {
                    print("Error copying file \(sourceItemURL.lastPathComponent) to \(destinationItemURL.lastPathComponent): \(error.localizedDescription)")
                    return false
                }
            }
        }
    } catch {
        print("Error creating directory \(destinationURL.path): \(error.localizedDescription)")
        return false
    }
    return true
}
```

### Pros
- Custom implementation allows for better error handling and logging.
- Can handle nested directories and files efficiently.

### Cons
- More complex implementation compared to using `FileManager`'s `copyItem` method.
- Requires additional code to handle recursion and error propagation.

## Conclusion
Both approaches effectively copy a directory and its contents from one location to another. The choice of approach depends on the specific requirements and constraints of your project:

- **Approach 1** is simpler and leverages `FileManager`'s `copyItem` method, making it suitable for straightforward tasks with minimal error handling requirements.
- **Approach 2** provides a more robust solution with custom error handling and the ability to handle nested directories, making it ideal for more complex scenarios.

For projects requiring minimal dependencies and straightforward copying, **Approach 1** is recommended. For tasks that need more control and better error handling, **Approach 2** offers a more comprehensive solution.
