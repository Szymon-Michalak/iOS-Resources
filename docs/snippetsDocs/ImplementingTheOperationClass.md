---
title: "Implementing the Operation Class"
description: "Learn how to encapsulate long-running tasks using the Operation class in Swift, providing a more object-oriented approach to concurrency management."
---

## Overview
When dealing with complex or long-running tasks in Swift, managing these tasks through closures on dispatch queues can be limiting. If you need to reuse tasks, track their state, or handle them in an object-oriented manner, **Operation** classes provide a robust solution. This guide will show you how to convert your tasks into `Operation` objects for better modularity, state management, and reusability.

### Why Use the Operation Class?
The **Operation** class allows you to wrap tasks in an object-oriented structure, offering benefits such as:
- **Reusability:** Encapsulate task logic within a class, making it reusable across your application.
- **State Management:** Track the execution state (e.g., isExecuting, isFinished) of operations.
- **Dependencies:** Easily manage dependencies between different operations.

### Example Implementation: Photo Book App
Let's take a practical example of a photo book creation app. We’ll convert tasks like image resizing and PDF generation into operations:

### Step 1: Define the Photo Resize Operation
Create a new Swift file called `PhotoResizeOperation.swift` and subclass the `Operation` class:

```swift
import UIKit

class PhotoResizeOperation: Operation {
    let resizer: PhotoResizer
    let size: CGSize
    let photos: NSMutableArray
    let photoIndex: Int

    init(resizer: PhotoResizer, size: CGSize, photos: NSMutableArray, photoIndex: Int) {
        self.resizer = resizer
        self.size = size
        self.photos = photos
        self.photoIndex = photoIndex
    }

    override func main() {
        guard !isCancelled else { return }
        guard let photo = photos[photoIndex] as? UIImage else { return }
        
        var resizedPhoto = resizer.scaleWithAspectFill([photo], to: size)
        guard !isCancelled else { return }
        
        resizedPhoto = resizer.centerCrop(resizedPhoto, to: size)
        photos[photoIndex] = resizedPhoto[0]
    }
}
```

### Step 2: Create the Photo Book Generation Operation
Similarly, create a `GeneratePhotoBookOperation.swift` file:

```swift
import UIKit

class GeneratePhotoBookOperation: Operation {
    let builder: PhotoBookBuilder
    let photos: NSMutableArray
    var photobookURL: URL?

    init(builder: PhotoBookBuilder, photos: NSMutableArray) {
        self.builder = builder
        self.photos = photos
    }

    override func main() {
        guard !isCancelled else { return }
        guard let photosArray = photos as? [UIImage] else { return }
        
        photobookURL = builder.buildPhotobook(with: photosArray)
    }
}
```

### Step 3: Integrate Operations in View Controller
In your `PhotoCollectionViewController.swift`, modify the `generatePhotoBook` method to use these operations:

```swift
let processingQueue = OperationQueue()

func generatePhotoBook(with photos: [UIImage], completion: @escaping (URL) -> Void) {
    let resizer = PhotoResizer()
    let builder = PhotoBookBuilder()
    let size = resizer.smallestCommonSize(for: photos)
    let processedPhotos = NSMutableArray(array: photos)
    
    let generateBookOp = GeneratePhotoBookOperation(builder: builder, photos: processedPhotos)
    
    for index in 0..<processedPhotos.count {
        let resizeOp = PhotoResizeOperation(resizer: resizer, size: size, photos: processedPhotos, photoIndex: index)
        generateBookOp.addDependency(resizeOp)
        processingQueue.addOperation(resizeOp)
    }

    generateBookOp.completionBlock = {
        guard let photobookURL = generateBookOp.photobookURL else { return }
        OperationQueue.main.addOperation {
            completion(photobookURL)
        }
    }

    processingQueue.addOperation(generateBookOp)
}
```

### How It Works
1. **State Management:** Operations manage their state with properties like `isReady`, `isExecuting`, and `isFinished`.
2. **Dependencies:** You can set up dependencies between operations, ensuring they execute in the correct order.
3. **Cancellation:** By checking `isCancelled` within the `main()` method, operations can exit early if needed.

### Adding Cancellation
To enable operation cancellation:
1. Add `guard isCancelled == false` checks within the `main()` methods of your operations.
2. Allow users to cancel operations through UI controls, calling `processingQueue.cancelAllOperations()` to cancel ongoing tasks.

## Related Resources
- [Understanding Grand Central Dispatch (GCD)](./gcd_overview.md)
- [Using Concurrent Queues for Image Processing](./image_processing_concurrent.md)

## References
- [Apple's Operation Class Documentation](http://swiftbook.link/docs/operation)
