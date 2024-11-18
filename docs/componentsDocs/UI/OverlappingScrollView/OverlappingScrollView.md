---
title: "Overlapping Scrollable Cards in SwiftUI"
description: "A SwiftUI component that displays a list of cards with an overlapping effect in a scrollable view, similar to the Apple Wallet app."

---

<!-- import GifExample1 from './OverlappingScrollableCards-Example1.gif';
import GifExample2 from './OverlappingScrollableCards-Example2.gif';

<img src={GifExample1} alt="Example 1" style={{width: 250}} />
<img src={GifExample2} alt="Example 2" style={{width: 250}} /> -->

<LinkCard title="See on Github" href="https://github.com/Szymon-Michalak/iOS-Components/tree/main/UI/OverlappingScrollView" />

<details>
**Source:** https://www.polpiella.dev/scrollable-zstack/

**Created:** 2024-08-28  

**Authors:** Pol Piella Abadia

**Tags:**  
SwiftUI, [Custom UI], ZStack
</details>

## Overview
This SwiftUI component allows developers to create a scrollable list of cards with an overlapping effect, similar to the Apple Wallet app. The cards are stacked on top of each other from new to old, with a negative vertical offset to create the overlapping effect. This component is useful in scenarios where you want to display a collection of items, such as event tickets, that the user can scroll through.

## Key Features
- **Overlapping Effect:** Cards are stacked with a negative vertical offset to create a visually appealing overlap.
- **Scrollable Content:** Ensures that all cards are accessible by making the container scrollable.
- **Customizable Offset:** The vertical offset can be adjusted to control the degree of overlap between cards.

## Integration
To integrate this component into your SwiftUI project, follow these steps:

- **Installation:** Copy the component code into your project or add it as a Swift package if available on GitHub.
- **Configuration:** Customize the `offsetConstant` and `cardHeight` properties to adjust the overlap and card size.

### Usage Example

```swift
import SwiftUI

struct MemoryCards: View {
    let memories: [Memory]
    private let offsetConstant: CGFloat = 60
    
    var body: some View {
        ScrollView(.vertical) {
            ZStack(alignment: .top) {
                ForEach(memories) { fixture in
                    MemoryView(fixture: fixture)
                        .padding(.top, offset(for: fixture).height)  // Option 1
                        .zIndex(zIndex(for: fixture))
                }
            }
            .padding(.horizontal, 8)
            .padding(.vertical)
        }
    }
    
    private func offset(for memory: Memory) -> CGSize {
        index(for: memory).map { CGSize(width: 0, height: offsetConstant * CGFloat($0)) } ?? .zero
    }
    
    private func zIndex(for memory: Memory) -> Double {
        index(for: memory).map { Double($0) } ?? .zero
    }
    
    private func index(for memory: Memory) -> Int? {
        memories.firstIndex(where: { $0.id == memory.id })
    }
}
```

## Customization
This component allows for customization in several areas:

- **Vertical Offset:** Adjust the `offsetConstant` to control how much each card overlaps with the next one.
- **Card Height:** Change the `cardHeight` property to adjust the height of each card and the overall appearance.
- **Stacking Order:** Modify the `zIndex(for:)` method to change how cards are stacked on top of each other.

## Use Cases
- **Event Tickets Display:** Use this component to display digital event tickets in a visually appealing, stackable format.
- **Photo Albums:** Implement this in a photo album app to show overlapping photo previews.
- **Task Management:** Stack task cards in a productivity app, making it easy to scroll through tasks in a specific order.

## Notes
- **Performance:** Ensure that the number of cards is not too large, as rendering many overlapping views could affect performance.
- **Compatibility:** The component is compatible with iOS 14 and later.


<LinkCard title="Visit Overlapping Scrollable Cards Component" href="https://www.polpiella.dev/scrollable-zstack/" />
