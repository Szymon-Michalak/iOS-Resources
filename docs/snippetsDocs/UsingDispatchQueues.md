---
title: "Using Dispatch Queues for Concurrency"
description: "Learn how to use Grand Central Dispatch (GCD) to improve app responsiveness by handling tasks on background threads, keeping the UI thread free for smooth user interactions."
---

Grand Central Dispatch (GCD) provides a powerful way to handle concurrency in your Swift applications, ensuring that long-running tasks don't block the main thread and thus keep the user interface responsive.

## Key Concepts
- **Serial Queues**: Execute tasks one at a time in a FIFO order.
- **Concurrent Queues**: Execute multiple tasks simultaneously as resources allow.

## Implementation Example
Here's how to use GCD to handle photo processing on a background thread while keeping the UI responsive:

```swift
let processingQueue = DispatchQueue(label: "Photo processing queue")

func generatePhotoBook(with photos: [UIImage]) {
    processingQueue.async { [weak self] in
        let resizer = PhotoResizer()
        let builder = PhotoBookBuilder()

        // Perform intensive tasks
        let photosForBook = resizer.scaleToSmallest(of: photos)
        let photobookURL = builder.buildPhotobook(with: photosForBook)

        // Update the UI on the main queue
        DispatchQueue.main.async {
            let previewController = UIDocumentInteractionController(url: photobookURL)
            previewController.delegate = self
            previewController.presentPreview(animated: true)
        }
    }
}
```

## How It Works
GCD allows you to offload heavy tasks to background threads, freeing the main thread for UI updates. This results in a smoother user experience even during intensive operations.

## Related Snippets
- [Using Dispatch Groups for Synchronizing Tasks](#)
- [Managing Background Tasks in Swift](#)

<LinkCard title="Learn More about Dispatch Queues" href="http://swiftbook.link/docs/dispatchqueue" />
