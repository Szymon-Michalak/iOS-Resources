### 🧩 Matched Geometry Effect Custom Segmented Control

#### Overview
The **Matched Geometry Effect Custom Segmented Control** is a reusable SwiftUI component designed to highlight the selected option with a smooth capsule-shaped animation. It uses SwiftUI's `matchedGeometryEffect()` modifier to dynamically align the capsule background with the selected button, creating an engaging UI experience.

#### Features
- **Smooth Transitions:** Animates the capsule background seamlessly between selected options.
- **Dynamic Sizing:** Adjusts to different button sizes based on content and layout.
- **Reusable:** Modular design ensures ease of integration into various SwiftUI projects.
- **Accessibility Friendly:** Designed with Dynamic Type and VoiceOver compatibility.

#### Code Snippet

```swift
import SwiftUI

enum SegmentedControlState: String, CaseIterable, Identifiable {
    var id: Self { self }
    
    case option1 = "Option 1"
    case option2 = "Option 2"
    case option3 = "Option 3"
}

struct SegmentedControl: View {
    @State private var state: SegmentedControlState = .option1
    @Namespace private var segmentedControl
    
    var body: some View {
        HStack {
            ForEach(SegmentedControlState.allCases) { state in
                Button {
                    withAnimation {
                        self.state = state
                    }
                } label: {
                    Text(state.rawValue)
                        .padding(10)
                }
                .matchedGeometryEffect(
                    id: state,
                    in: segmentedControl
                )
            }
        }
        .background(
            Capsule()
                .fill(Color.secondary.opacity(0.3))
                .matchedGeometryEffect(
                    id: state,
                    in: segmentedControl,
                    isSource: false
                )
        )
        .padding(6)
        .background(Color.indigo)
        .clipShape(Capsule())
        .buttonStyle(.plain)
    }
}
```

#### How to Use
1. **Import the Component:** Copy and paste the `SegmentedControl` struct into your SwiftUI project.
2. **Customize Options:** Modify the `SegmentedControlState` enum to include your desired button titles.
3. **Add to a View:** Integrate the `SegmentedControl` into any SwiftUI view by calling it as a child view.

#### Showcase
![Custom Segmented Control Example](https://nilcoalescing.com/static/blog/CustomSegmentedControlWithMatchedGeometryEffect/animation.4E2LhzV2KsaoA00Ph7kwCdLtTiyktilXvJaEX_5x5p4.gif)

#### Resources
- **Documentation:** [SwiftUI `matchedGeometryEffect`](https://developer.apple.com/documentation/swiftui/view/matchedgeometryeffect)
- **Source Code:** [GitHub Repository](https://github.com/NilCoalescing/SwiftUI-Code-Examples/blob/main/Custom-Segmented-Control-with-Matched-Geometry-Effect/CustomSegmentedControl.swift)
