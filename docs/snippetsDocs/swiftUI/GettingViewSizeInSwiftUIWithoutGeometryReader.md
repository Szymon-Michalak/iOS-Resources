---
title: "Getting View Size in SwiftUI Without GeometryReader"
description: "Learn how to dynamically track view size changes in SwiftUI with `onGeometryChange`, avoiding the complexities of `GeometryReader`."
---

Using `onGeometryChange`, you can monitor view size changes in SwiftUI dynamically and avoid common pitfalls of `GeometryReader`. This snippet demonstrates how to create a dynamically sized bottom sheet based on its content size.

<details>

**Source:** [Filip Němeček's Blog](https://nemecek.be/blog/208/getting-view-size-in-swiftui-without-geometryreader)

**Author:** `Filip Němeček`

**Tags:**  
`SwiftUI`, `iOS`, `GeometryReader`, `onGeometryChange`

**Platforms Supported:** iOS 16+

**Swift Version:** Swift 5.5+
</details>

## Code

```swift
import SwiftUI

struct ContentView: View {
    @State private var contentHeight: CGFloat = 0
    @State private var showsSheet = false
    @State private var fontSize: CGFloat = 50

    var body: some View {
        VStack(spacing: 20) {
            Text("onGeometryChange example")
                .font(.largeTitle)
                .multilineTextAlignment(.center)

            Button {
                fontSize = CGFloat.random(in: 30...80)
                showsSheet = true
            } label: {
                Text("Show sheet")
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .sheet(isPresented: $showsSheet) {
            VStack {
                Text("This sheet dynamically sizes to fit content.")
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
                    .font(.system(size: fontSize))
            }
            .onGeometryChange(for: CGSize.self) { proxy in
                proxy.size
            } action: {
                self.contentHeight = $0.height
            }
            .presentationDetents([.height(contentHeight)])
        }
    }
}
```

## Usage

```swift
// Instantiate the ContentView to see how the bottom sheet dynamically adjusts to its content.
struct Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## Discussion
- **Dynamic Resizing:** The `onGeometryChange` modifier dynamically updates the `contentHeight` state variable whenever the view’s size changes, allowing seamless adjustments to the sheet’s presentation height.
- **Backward Compatibility:** Although introduced in iOS 18, this modifier supports iOS 16 and 17, ensuring broader usability.
- **Avoids Layout Loops:** Unlike `GeometryReader`, `onGeometryChange` reduces the risk of unintentional layout loops.

## Notes
- **Flexibility:** This snippet can be adapted to other use cases, such as horizontal carousels or adaptive layouts.
- **Compatibility:** Available for SwiftUI applications targeting iOS 16 and later.

## Related Snippets
- [SwiftUI Custom View Modifiers](#)
- [Dynamic Layouts with SwiftUI](#)

<LinkCard title="View Full Snippet" href="https://nemecek.be/blog/208/getting-view-size-in-swiftui-without-geometryreader" />
