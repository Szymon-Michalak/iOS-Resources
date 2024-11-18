---
title: "Movie Detail View Custom Alignment Guide"
description: "A UI component that demonstrates how to use custom alignment guides in SwiftUI for precise view alignment. Perfect for layouts requiring complex view positioning, such as movie detail screens."
---

<!-- import GifExample1 from './MovieDetailView-Example1.gif';
import GifExample2 from './MovieDetailView-Example2.gif';
import GifExample3 from './MovieDetailView-Example3.gif';

<img src={GifExample1} alt="Example 1" style={{width: 250}} />
<img src={GifExample2} alt="Example 2" style={{width: 250}} />
<img src={GifExample3} alt="Example 3" style={{width: 250}} /> -->

<LinkCard title="See on Github" href="[Full URL of the GitHub Repository or Documentation]" />

<details>
**Source:** [Full URL of the Source Repository or Documentation]

**Created:** 2024-08-24  
**Last Updated:** 2024-08-24

**Authors:** `Karin Prater`

**Tags:**  
`SwiftUI`, `iOS`, `Custom Alignment`, `View Layout`
</details>

## Overview
The **Movie Detail View Custom Alignment Guide** is a UI component designed to help developers align views precisely within complex layouts in SwiftUI. By using custom alignment guides, this component ensures that elements like images, titles, and ratings are perfectly positioned relative to each other, solving alignment challenges similar to those faced with Auto Layout in UIKit.

## Key Features
- **Custom Alignment Guides:** Leverages `AlignmentID` and `VerticalAlignment` to create custom alignment points.
- **Flexible Layouts:** Can be adapted to various complex layouts requiring precise positioning of multiple views.
- **SwiftUI Integration:** Fully compatible with SwiftUI’s layout system, providing a seamless development experience.

## Integration
To integrate this component into your Swift project, follow these steps:

- **Installation:** No installation required. Simply copy the provided code into your SwiftUI view files.
- **Configuration:** Customize the alignment guide values to suit your layout needs.
- **Usage Example:**

### 1. Define the Custom Alignment Guide

```swift
struct ImageTitleAlignment: AlignmentID {
     static func defaultValue(in context: ViewDimensions) -> CGFloat {
             context[.bottom]
     }
}

extension VerticalAlignment {
     static let imageTitleAlignment = VerticalAlignment(ImageTitleAlignment.self)
}

extension Alignment {
    static let movieAlignment = Alignment(horizontal: .leading, vertical: .imageTitleAlignment)
}
```

### 2. Implement the Custom Alignment in the View

```swift
struct MovieDetailView: View {
    let headerSpacing: CGFloat = 10

    var body: some View {
        VStack {
            ZStack(alignment: .movieAlignment) {
                ResizableImageView(imageName: "spider")
                
                HStack(spacing: 20) {
                    Image(systemName: "star")
                        .alignmentGuide(.imageTitleAlignment, computeValue: { dimension in
                            dimension[VerticalAlignment.bottom] + headerSpacing / 2
                        })
                    
                    VStack(alignment: .leading, spacing: headerSpacing) {
                        Text("Spider-Man")
                            .font(.largeTitle)
                            .bold()
                        Text("Rating: ★★★★☆")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
            }
            
            Text("More details about the movie go here...")
                .padding(.top)
        }
    }
}
```

### 3. Example of `ResizableImageView`

```swift
struct ResizableImageView: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 200)
            .clipped()
    }
}
```

## Customization
The component can be customized as follows:

- **Alignment Guide Adjustments:** Modify the `defaultValue` in the `AlignmentID` implementation to change how the views align relative to each other.
- **Spacing Adjustments:** Adjust `headerSpacing` and other spacing values to fit your specific UI design.

## Use Cases
- **Movie Detail Screens:** Perfect for aligning elements like background images, titles, and ratings in movie detail views.
- **Complex Layouts:** Useful in any scenario requiring intricate alignment between different UI elements.

## Notes
- **Performance:** The use of custom alignment guides is efficient and does not significantly impact the performance of SwiftUI layouts.
- **Compatibility:** Compatible with all SwiftUI-supported platforms, including iOS, macOS, and tvOS.

## Documentation and Resources
- **Official SwiftUI Documentation:** [Link to Apple's SwiftUI documentation]
- **Advanced Layout Techniques in SwiftUI:** [Link to a related tutorial or resource]

<LinkCard title="Visit Movie Detail View Custom Alignment Guide" href="[Full URL of the GitHub Repository or Documentation]" />
