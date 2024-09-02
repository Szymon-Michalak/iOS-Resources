---
title: Visualizing Articles & Advanced Codables
description: A snippet for visualizing articles by parsing JSON with advanced Codable techniques and displaying them using custom UITableViewCells.
---

A snippet for visualizing articles by parsing JSON with advanced Codable techniques and displaying them using custom UITableViewCells.

<details>

**URL:** [Full Implementation](https://github.com/aryamansharda/Article)

**Source:** [Ace the iOS Interview](/docs/resourcesDocs/books/AceTheiOSInterview.md)

**Author:** `Aryaman Sharda`

**Tags:**  
`Articles`, `iOS`, `Swift`, `UITableView`, `Codables`

**Platforms Supported:** iOS

**Swift Version:** 5.0
</details>

### Key Points
- Use Codable to parse JSON with a mix of objects.
- Create custom UITableViewCells for different article sections.
- Implement a scalable solution to support additional section types.

### Use Cases
- Displaying articles fetched from a remote server in an iOS application.
- Dynamically rendering various types of content (headings, paragraphs, images, quotes).
- Handling complex JSON structures with Swift's Codable.

### Alternative Approaches
- Using third-party libraries like SwiftyJSON for JSON parsing.
- Hardcoding the layout for specific articles (less flexible).
- Creating a custom view instead of using UITableView.

### Performance Considerations
- Ensure smooth scrolling by optimizing cell reuse.
- Load images asynchronously to avoid blocking the main thread.
- Minimize JSON parsing overhead by caching results.

### Code

#### Models
```swift title="Heading.swift"
struct Heading: Decodable {
    let text: String
    let size: Int
}
```

```swift title="Paragraph.swift"
struct Paragraph: Decodable {
    let text: String
}
```

```swift title="Image.swift"
struct Image: Decodable {
    let url: String
    let caption: String
    let source: String
}
```

```swift title="Quote.swift"
struct Quote: Decodable {
    let text: String
    let author: String
}
```

#### Result 

```swift title="Result.swift"
struct Result: Decodable {
    let response: [Response]

    enum Response: Decodable {
        case heading(Heading)
        case paragraph(Paragraph)
        case image(Image)
        case quote(Quote)

        enum DecodingError: Error {
            case wrongJSON
        }

        enum CodingKeys: String, CodingKey {
            case heading
            case paragraph
            case image
            case quote
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            switch container.allKeys.first {
            case .heading:
                let value = try container.decode(Heading.self, forKey: .heading)
                self = .heading(value)
            case .paragraph:
                let value = try container.decode(Paragraph.self, forKey: .paragraph)
                self = .paragraph(value)
            case .image:
                let value = try container.decode(Image.self, forKey: .image)
                self = .image(value)
            case .quote:
                let value = try container.decode(Quote.self, forKey: .quote)
                self = .quote(value)
            case .none:
                throw DecodingError.wrongJSON
            }
        }
    }
}
```

#### View Controller
```swift title="ViewController.swift"
final class ViewController: UIViewController {
    @IBOutlet fileprivate(set) var tableView: UITableView!

    var dataSource = [Result.Response]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadArticle()
    }

    private func loadArticle() {
        if let url = Bundle.main.url(forResource: "Article", withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let result = try? JSONDecoder().decode(Result.self, from: data) {
            dataSource = result.response
        }
    }
}
```

#### Cells
```swift title="HeadingCell.swift"
final class HeadingCell: UITableViewCell {
    @IBOutlet private(set) var headingLabel: UILabel!

    func configure(model: Heading) {
        headingLabel.text = model.text
        headingLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(model.size))
    }
}
```

```swift title="ImageCell.swift"
final class ImageCell: UITableViewCell {
    @IBOutlet private(set) var thumbnailImageView: UIImageView!
    @IBOutlet private(set) var captionLabel: UILabel!
    @IBOutlet private(set) var sourceLabel: UILabel!

    func configure(model: Image) {
        thumbnailImageView.loadImageFromURL(urlString: model.url, placeholder: nil)
        captionLabel.text = model.caption
        sourceLabel.text = model.source
    }
}
```

```swift title="QuoteCell.swift"
final class QuoteCell: UITableViewCell {
    @IBOutlet private(set) var quoteTextLabel: UILabel!
    @IBOutlet private(set) var quoteAuthorLabel: UILabel!

    func configure(model: Quote) {
        quoteTextLabel.text = model.text
        quoteAuthorLabel.text = model.author
    }
}
```

```swift title="ParagraphCell.swift"
final class ParagraphCell: UITableViewCell {
    @IBOutlet private(set) var paragraphLabel: UILabel!

    func configure(model: Paragraph) {
        paragraphLabel.text = model.text
    }
}
```

#### DataSource
```swift title="UITableViewDataSource.swift"
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch dataSource[indexPath.row] {
        case .heading(let heading):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HeadingCell.reuseIdentifier, for: indexPath) as? HeadingCell else {
                return UITableViewCell()
            }
            cell.configure(model: heading)
            return cell
        case .paragraph(let paragraph):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ParagraphCell.reuseIdentifier, for: indexPath) as? ParagraphCell else {
                return UITableViewCell()
            }
            cell.configure(model: paragraph)
            return cell
        case .image(let image):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageCell.reuseIdentifier, for: indexPath) as? ImageCell else {
                return UITableViewCell()
            }
            cell.configure(model: image)
            return cell
        case .quote(let quote):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: QuoteCell.reuseIdentifier, for: indexPath) as? QuoteCell else {
                return UITableViewCell()
            }
            cell.configure(model: quote)
            return cell
        }
    }
}
```

### Usage Example

```swift
// No additional usage example necessary as the UITableView setup demonstrates usage.
```

### Related Snippets
- [Creating an Analytics Service](#)
- [Handling Large Numbers in Swift](#)

### References
- [Swift Documentation](https://swift.org/documentation/)
- [Advanced Codable Techniques](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)

<LinkCard title="Read Full Snippet" href="https://github.com/aryamansharda/Article" />
