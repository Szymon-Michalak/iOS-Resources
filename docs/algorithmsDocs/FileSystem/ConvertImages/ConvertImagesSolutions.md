# Convert Images - Solutions

## Approach 1: Iterative File Processing with UIKit
### Description
This approach uses UIKit's `UIImage` class to iterate through the files in the given directory, check their extensions, and convert JPEG and JPG files to PNG format. The converted files are saved with the same name but with a `.png` extension.

### Implementation

```swift
// MARK: - Imports

import UIKit

// MARK: - Solution

// Function to convert JPEGs to PNGs
func convertJPEGsToPNGs(in directoryPath: String) -> [String] {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)
    var convertedFiles: [String] = []

    guard let files = try? fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return ["Invalid directory path"] }

    for file in files {
        if file.pathExtension.lowercased() == "jpg" || file.pathExtension.lowercased() == "jpeg" {
            do {
                let imageData = try Data(contentsOf: file)
                guard let image = UIImage(data: imageData) else { continue }

                guard let pngData = image.pngData() else { continue }

                let pngFileURL = file.deletingPathExtension().appendingPathExtension("png")
                try pngData.write(to: pngFileURL)
                convertedFiles.append(pngFileURL.lastPathComponent)
            } catch {
                continue
            }
        }
    }

    return convertedFiles.isEmpty ? ["No files converted"] : convertedFiles
}
```

### Pros
- Utilizes UIKit's `UIImage` class, which is straightforward and easy to use.
- Simple implementation with no additional dependencies required.

### Cons
- Limited to iOS and other platforms where UIKit is available.
- Error handling is minimal, which might lead to missed conversion opportunities.

## Approach 2: Using Core Graphics
### Description
This approach uses Core Graphics to handle image file conversion. It involves reading the image files as data, creating an image context, and then writing the new image data in PNG format.

### Implementation

```swift
// MARK: - Imports

import CoreGraphics
import ImageIO
import MobileCoreServices

// MARK: - Solution

// Function to convert JPEGs to PNGs using Core Graphics
func convertJPEGsToPNGsUsingCoreGraphics(in directoryPath: String) -> [String] {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)
    var convertedFiles: [String] = []

    guard let files = try? fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return ["Invalid directory path"] }

    for file in files {
        if file.pathExtension.lowercased() == "jpg" || file.pathExtension.lowercased() == "jpeg" {
            do {
                let imageData = try Data(contentsOf: file)
                guard let source = CGImageSourceCreateWithData(imageData as CFData, nil),
                      let cgImage = CGImageSourceCreateImageAtIndex(source, 0, nil) else { continue }

                let pngFileURL = file.deletingPathExtension().appendingPathExtension("png")
                guard let destination = CGImageDestinationCreateWithURL(pngFileURL as CFURL, kUTTypePNG, 1, nil) else { continue }

                CGImageDestinationAddImage(destination, cgImage, nil)
                CGImageDestinationFinalize(destination)
                convertedFiles.append(pngFileURL.lastPathComponent)
            } catch {
                continue
            }
        }
    }

    return convertedFiles.isEmpty ? ["No files converted"] : convertedFiles
}
```

### Pros
- Does not require third-party libraries.
- Uses Core Graphics, a powerful native framework for image processing.

### Cons
- More complex implementation compared to the first approach.
- Core Graphics API can be less intuitive for beginners.

## Conclusion
Both approaches effectively convert JPEG and JPG files to PNG format in a given directory. The choice of approach depends on the specific requirements and constraints of your project:

- **Approach 1** is simpler and leverages UIKit's `UIImage` class, making it suitable for quick implementations where platform availability is not an issue.
- **Approach 2** uses Core Graphics, which avoids external dependencies and can be beneficial in environments where native solutions are preferred.

For projects requiring minimal dependencies and deeper control over image processing, **Approach 2** is recommended. For straightforward tasks and rapid development, **Approach 1** offers a simpler and quicker solution.
