---
title: Fetching Remote Images
description: This snippet demonstrates how to fetch and cache remote images efficiently in Swift, ensuring minimal HTTP requests and optimal performance.
---

This snippet demonstrates how to fetch and cache remote images efficiently in Swift, ensuring minimal HTTP requests and optimal performance.

<details>

**URL:** [Fetching Remote Images](#)

**Source:** [Ace the iOS Interview](/docs/resourcesDocs/books/AceTheiOSInterview.md)

**Author:** `Aryaman Sharda`

**Tags:**  
`Swift`, `Networking`, `UIImageView`, `Caching`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.0 and above
</details>

### Key Points
- Utilizes `NSCache` for image caching.
- Extends `UIImageView` to fetch and display remote images.
- Ensures images are fetched only when not already cached.

### Use Cases
- Efficiently loading images in table or collection views.
- Reducing the number of redundant HTTP requests for images.
- Enhancing user experience by caching images locally.

### Alternative Approaches
- Using third-party libraries like Kingfisher or SDWebImage for advanced image handling.
- Implementing custom image caching solutions with more features.
- Using background threads to fetch images without blocking the main thread.

### Performance Considerations
- Reduces the load on servers by caching images locally.
- Minimizes latency in displaying images by fetching from cache.
- Asynchronous image fetching ensures the UI remains responsive.

### Code

```swift
import Foundation
import UIKit

let imageCache = NSCache<NSString, UIImage>()

extension UIImageView {
    /// Loads an image from a URL and saves it into an image cache, returns
    /// the image if already available in the cache.
    /// - Parameter urlString: String representation of the URL to load the
    /// image from
    /// - Parameter placeholder: An optional placeholder to show while the
    /// image is being fetched
    /// - Returns: A reference to the data task in order to pause, cancel,
    /// resume, etc.
    @discardableResult
    func loadImageFromURL(urlString: String, placeholder: UIImage? = nil) -> URLSessionDataTask? {
        self.image = nil
        
        let key = NSString(string: urlString)
        if let cachedImage = imageCache.object(forKey: key) {
            self.image = cachedImage
            return nil
        }
        
        guard let url = URL(string: urlString) else {
            return nil
        }
        
        if let placeholder = placeholder {
            self.image = placeholder
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            DispatchQueue.main.async {
                if let data = data, let downloadedImage = UIImage(data: data) {
                    imageCache.setObject(downloadedImage, forKey: NSString(string: urlString))
                    self.image = downloadedImage
                }
            }
        }
        
        task.resume()
        return task
    }
}
```

### Related Snippets
- [Performing API Requests with URLSession](#)
- [Handling JSON with Codable in Swift](#)

### References
- [Apple's Official Documentation on URLSession](https://developer.apple.com/documentation/foundation/urlsession)
- [NSCache Documentation](https://developer.apple.com/documentation/foundation/nscache)

<LinkCard title="Read Full Snippet" href="#" />
