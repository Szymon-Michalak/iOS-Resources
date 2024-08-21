---
title: "Working with JSON"
description: "This guide covers how to interact with JSON data in Swift, including sending and receiving JSON data through APIs using URLSession and handling JSON with Codable and JSONSerialization."
---

Interacting with JSON data is crucial in modern iOS apps, particularly when working with web APIs. This guide demonstrates how to fetch and send JSON data using URLSession, decode JSON into Swift structures, and handle various JSON formats using Codable and JSONSerialization.

<details>

**URL:** [https://developer.apple.com/documentation/foundation/jsonserialization](https://developer.apple.com/documentation/foundation/jsonserialization)

**Source:** [Book: Swift Programming](#)

**Author:** `[Author Name]`

**Tags:**  
`JSON`, `API`, `Networking`, `Swift`, `Codable`, `GitHub API`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.x
</details>

## Fetching JSON Data from an API

### Code: Fetching Repositories from GitHub

```swift
import Foundation

class GitHubAPI {
    let session: URLSession

    init(session: URLSession = .shared) {
        self.session = session
    }

    func fetchRepositories(for user: String, completion: @escaping (Result<[Repository], Error>) -> Void) {
        guard let url = URL(string: "https://api.github.com/users/\(user)/repos") else {
            completion(.failure(APIError.invalidURL))
            return
        }

        var request = URLRequest(url: url)
        request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")

        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(APIError.noData))
                return
            }

            do {
                let repositories = try JSONDecoder().decode([Repository].self, from: data)
                completion(.success(repositories))
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }

    enum APIError: Error {
        case invalidURL
        case noData
    }
}

struct Repository: Codable {
    let id: Int
    let name: String
    let fullName: String
    let owner: Owner

    struct Owner: Codable {
        let login: String
        let id: Int
    }
}
```

### Discussion
This code demonstrates how to fetch a list of repositories from GitHub's API, decode the JSON response using `Codable`, and handle errors effectively using the `Result` type. The `GitHubAPI` class manages the network request and JSON parsing.

### Handling Complex JSON Structures
Working with nested or complex JSON structures can be challenging. This snippet uses `Codable` for automatic decoding, but manual parsing with `JSONSerialization` can be necessary for more control over the data handling process.

### Example: Manual JSON Parsing with JSONSerialization

```swift
import Foundation

class JSONHandler {
    static func parse(jsonData: Data) -> [String: Any]? {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
            return jsonObject as? [String: Any]
        } catch {
            print("Failed to parse JSON: \(error)")
            return nil
        }
    }
}

// Example usage
if let jsonData = someJSONString.data(using: .utf8) {
    if let json = JSONHandler.parse(jsonData: jsonData) {
        print(json)
    }
}
```

### Posting JSON Data to an API

Creating issues on GitHub involves sending JSON data in a POST request. The following example demonstrates how to serialize JSON data and handle the API response.

```swift
import Foundation

func createIssue(inRepo repo: String, forUser user: String, title: String, body: String?, token: String, completion: @escaping (Result<[String: Any], Error>) -> Void) {
    guard let url = URL(string: "https://api.github.com/repos/\(user)/\(repo)/issues") else {
        completion(.failure(APIError.invalidURL))
        return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/vnd.github.v3+json", forHTTPHeaderField: "Accept")
    request.setValue("token \(token)", forHTTPHeaderField: "Authorization")

    let json = ["title": title, "body": body ?? ""]
    request.httpBody = try? JSONSerialization.data(withJSONObject: json, options: [])

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            completion(.failure(error))
            return
        }

        guard let data = data else {
            completion(.failure(APIError.noData))
            return
        }

        do {
            if let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                completion(.success(jsonResponse))
            } else {
                completion(.failure(APIError.invalidResponse))
            }
        } catch {
            completion(.failure(error))
        }
    }

    task.resume()
}

enum APIError: Error {
    case invalidURL
    case noData
    case invalidResponse
}
```

### Discussion
This example shows how to create a POST request to the GitHub API, sending JSON data to create a new issue. It handles authentication with a personal access token and uses `JSONSerialization` for manual JSON handling.

## Conclusion
Working with JSON in Swift involves both decoding incoming JSON with `Codable` and encoding outgoing data with `JSONSerialization`. These tools allow for robust and flexible handling of JSON data, essential for interacting with web APIs.

## Related Snippets
- [Using Codable for JSON Parsing](#)
- [Error Handling in Networking](#)

<LinkCard title="Learn More about JSONSerialization" href="https://developer.apple.com/documentation/foundation/jsonserialization" />
