---
title: "Fetching an Image with URLSession"
description: "This snippet demonstrates how to fetch an image using URLSession in Swift, with a focus on clean code practices, including error handling, code reusability, and separation of concerns."
---

Fetching an image from the internet is a common task in iOS development. This snippet shows how to do it cleanly using `URLSession` in Swift, with best practices like error handling and separation of concerns.

<details>

**URL:** [https://developer.apple.com/documentation/foundation/urlsession](https://developer.apple.com/documentation/foundation/urlsession)

**Source:** [Book: Swift Programming](#)

**Author:** `[Author Name]`

**Tags:**  
`Networking`, `URLSession`, `Swift`, `iOS`, `Clean Code`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.x
</details>

## Code

```swift
import Foundation
import UIKit

class ImageDownloader {
    static func downloadImage(from urlString: String, completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        let session = URLSession(configuration: .default)
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            completion(.success(image))
        }
        
        task.resume()
    }
    
    enum NetworkError: Error {
        case invalidURL
        case noData
    }
}
```

## Usage

```swift
class ImageViewController: UIViewController {
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.frame = view.bounds
        
        ImageDownloader.downloadImage(from: "https://imgs.xkcd.com/comics/api.png") { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let image):
                    self?.imageView.image = image
                case .failure(let error):
                    print("Failed to download image: \(error)")
                    // Handle error (e.g., show an alert to the user)
                }
            }
        }
    }
}
```

## Discussion
This refactored snippet demonstrates how to fetch an image using `URLSession` while adhering to clean code principles. By separating concerns, the `ImageDownloader` class handles the networking logic, and the `ImageViewController` focuses on UI updates. This approach improves code reusability, maintainability, and testability.

### Key Points
- **Error Handling:** Uses the `Result` type for clear success and failure cases.
- **Code Reusability:** Networking logic is encapsulated in a separate class.
- **Avoiding Force Unwrapping:** Optional values are safely unwrapped using `guard`.
- **Separation of Concerns:** The view controller is responsible only for UI logic.

## Notes
- **Flexibility:** This pattern can be extended to fetch other types of data by adjusting the parsing logic in the `ImageDownloader` class.
- **Compatibility:** Suitable for iOS and macOS with Swift 5.x.

## Related Snippets
- [Handling JSON Responses with URLSession](#)
- [Error Handling in Network Requests](#)

<LinkCard title="View Full Snippet" href="https://developer.apple.com/documentation/foundation/urlsession" />
