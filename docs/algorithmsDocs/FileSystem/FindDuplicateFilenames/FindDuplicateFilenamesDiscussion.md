# Find Duplicate - Solutions

## Approach 1: Using FileManager and Set
### Description
This approach uses the `FileManager` class to recursively scan the specified directory and its subdirectories. It maintains a set to track seen filenames and a separate set to track duplicates. The `FileManager`'s `enumerator(at:includingPropertiesForKeys:)` method is used to iterate over all files and directories within the specified path.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func findDuplicateFilenames(in directoryPath: String) -> [String] {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)

    guard let files = fileManager.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else {
        return []
    }

    var seenFiles = Set<String>()
    var duplicateFiles = Set<String>()

    for case let file as URL in files {
        guard !file.hasDirectoryPath else { continue }

        let fileName = file.lastPathComponent

        if seenFiles.contains(fileName) {
            duplicateFiles.insert(fileName)
        } else {
            seenFiles.insert(fileName)
        }
    }

    return Array(duplicateFiles)
}
```

### Pros
- Efficiently scans directories and subdirectories.
- Uses sets to track seen and duplicate filenames, ensuring fast lookups.

### Cons
- Limited error handling; assumes the directory exists and is accessible.
- Assumes filenames are unique within each directory, which may not always be true.

## Approach 2: Using FileManager and Dictionary for Counting
### Description
This approach uses the `FileManager` class to recursively scan the specified directory and its subdirectories. It maintains a dictionary to count occurrences of each filename. After scanning, it filters out filenames that appear more than once.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func findDuplicateFilenamesUsingDictionary(in directoryPath: String) -> [String] {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)

    guard let files = fileManager.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else {
        return []
    }

    var fileCount: [String: Int] = [:]

    for case let file as URL in files {
        guard !file.hasDirectoryPath else { continue }

        let fileName = file.lastPathComponent
        fileCount[fileName, default: 0] += 1
    }

    let duplicates = fileCount.filter { $0.value > 1 }.map { $0.key }
    return duplicates
}
```

### Pros
- Allows for detailed counting of file occurrences.
- Can be useful if the frequency of each filename is needed for further analysis.

### Cons
- Uses more memory to store the counts of each filename.
- Slightly more complex than the set-based approach.

## Approach 3: Using a Recursive Function
### Description
This approach uses a recursive function to traverse the directory and its subdirectories. It builds a dictionary to count filenames and then extracts duplicates.

### Implementation

```swift
// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func findDuplicateFilenamesRecursively(in directoryPath: String) -> [String] {
    let fileManager = FileManager.default
    var fileCount: [String: Int] = [:]

    func scanDirectory(at path: String) {
        guard let items = try? fileManager.contentsOfDirectory(atPath: path) else { return }

        for item in items {
            let fullPath = (path as NSString).appendingPathComponent(item)
            var isDirectory: ObjCBool = false
            fileManager.fileExists(atPath: fullPath, isDirectory: &isDirectory)

            if isDirectory.boolValue {
                scanDirectory(at: fullPath)
            } else {
                fileCount[item, default: 0] += 1
            }
        }
    }

    scanDirectory(at: directoryPath)
    
    let duplicates = fileCount.filter { $0.value > 1 }.map { $0.key }
    return duplicates
}
```

### Pros
- Custom implementation allows for flexibility in handling specific requirements.
- Can be extended easily for additional functionality.

### Cons
- More complex due to recursion.
- Potentially slower for very large directory trees due to repeated function calls.

## Conclusion
The provided approaches offer different methods to find duplicate filenames in a specified directory and its subdirectories:

- **Approach 1** uses sets for simplicity and efficiency, suitable for straightforward duplication detection.
- **Approach 2** uses a dictionary for detailed counting, making it useful for scenarios requiring frequency analysis.
- **Approach 3** uses a recursive function, providing flexibility and the ability to extend the solution easily.

Each approach has its own strengths and weaknesses, and the choice depends on the specific requirements and constraints of your project.
