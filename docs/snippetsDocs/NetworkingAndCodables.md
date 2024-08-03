---
title: Networking and Basic Codables
description: This snippet demonstrates how to structure API endpoints and implement a networking layer in Swift, ensuring scalability and maintainability.
---

This snippet demonstrates how to structure API endpoints and implement a networking layer in Swift, ensuring scalability and maintainability.

<details>

**URL:** [Networking and Basic Codables](#)

**Source:** [Ace the iOS Interview](/docs/resourcesDocs/books/AceTheiOSInterview.md)

**Author:** `Aryaman Sharda`

**Tags:**  
`Swift`, `Networking`, `Codables`, `URLSession`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.0 and above
</details>

### Key Points
- Introduces enums for HTTP methods and schemes.
- Defines a protocol to represent API endpoints.
- Implements a generic networking layer.
- Provides an example with the Google Places API.

### Use Cases
- Standardizing API requests across different services.
- Simplifying network call implementation and maintenance.
- Decoupling URL construction from request execution.

### Alternative Approaches
- Using third-party libraries like Alamofire for more advanced networking needs.
- Directly using `URLSession` without abstracting API endpoints.
- Employing a service-oriented architecture to manage API calls.

### Performance Considerations
- Ensures reusability and reduces boilerplate code.
- Abstraction adds a small overhead but increases maintainability.
- Properly handles threading and asynchronous tasks.

### Code

```swift
import Foundation

// Enum for HTTP Methods
enum HTTPMethod: String {
    case delete = "DELETE"
    case get = "GET"
    case patch = "PATCH"
    case post = "POST"
    case put = "PUT"
}

// Enum for HTTP Schemes
enum HTTPScheme: String {
    case http
    case https
}

// Protocol to represent API endpoints
protocol API {
    var scheme: HTTPScheme { get }
    var baseURL: String { get }
    var path: String { get }
    var parameters: [URLQueryItem] { get }
    var method: HTTPMethod { get }
}

// Example implementation for Google Places API
enum GooglePlacesAPI: API {
    case getNearbyPlaces(searchText: String?, latitude: Double, longitude: Double)
    
    var scheme: HTTPScheme {
        return .https
    }
    
    var baseURL: String {
        return "maps.googleapis.com"
    }
    
    var path: String {
        return "/maps/api/place/nearbysearch/json"
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getNearbyPlaces(let query, let latitude, let longitude):
            var params = [
                URLQueryItem(name: "key", value: "YOUR_API_KEY"),
                URLQueryItem(name: "language", value: Locale.current.languageCode),
                URLQueryItem(name: "type", value: "restaurant"),
                URLQueryItem(name: "radius", value: "6500"),
                URLQueryItem(name: "location", value: "\(latitude),\(longitude)")
            ]
            if let query = query {
                params.append(URLQueryItem(name: "keyword", value: query))
            }
            return params
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
}

// Networking layer to handle requests and responses
final class NetworkManager {
    fileprivate class func buildURL(endpoint: API) -> URLComponents {
        var components = URLComponents()
        components.scheme = endpoint.scheme.rawValue
        components.host = endpoint.baseURL
        components.path = endpoint.path
        components.queryItems = endpoint.parameters
        return components
    }
    
    class func request<T: Codable>(endpoint: API, completion: @escaping (Result<T, Error>) -> Void) {
        var urlRequest = URLRequest(url: buildURL(endpoint: endpoint).url!)
        urlRequest.httpMethod = endpoint.method.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                // Handle missing data error
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedResponse))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
```

### Related Snippets
- [Performing API Requests with URLSession](#)
- [Handling JSON with Codable in Swift](#)

### References
- [Apple's Official Documentation on URLSession](https://developer.apple.com/documentation/foundation/urlsession)
- [Using JSON with Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)

<LinkCard title="Read Full Snippet" href="#" />
