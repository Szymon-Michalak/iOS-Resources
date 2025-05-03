---
slug: DelegateOptionalityInSwiftUIMigration
title: How do you handle the delegate optionality problem when migrating UIKit code to SwiftUI?
authors: [szymon]
tags: [swiftui, migration, architecture]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** ChatGPT

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

When migrating UIKit code step-by-step to SwiftUI, the common "delegate optionality problem" is solved by replacing optional delegate callbacks with optional closures or by forwarding events through an adapter and a view model. This allows UIKit to safely interact with SwiftUI while maintaining reactivity and minimizing code duplication.

:::

In UIKit, delegation is a common pattern where the delegate is optional (`weak var delegate: SomeDelegate?`). Delegate methods are often optional or selectively implemented, especially when working with `@objc` protocols.

SwiftUI, however, does not use delegation. Instead, SwiftUI favors:
- Bindings
- Closures (callbacks)
- `ObservableObject`-based state management

This mismatch creates a challenge during partial UIKit-to-SwiftUI migrations where not all code can be rewritten immediately.

To handle this safely:

### 1. Replace Delegate with an Adapter
Introduce a small adapter object that exposes **optional closures** or methods to handle user interaction events:
```swift
final class ItemSelectionAdapter {
    var onSelectItem: ((Item) -> Void)?
}
```

UIKit can call:
```swift
adapter?.onSelectItem?(item)
```
SwiftUI can provide the closure when integrating.

---

### 2. Introduce a ViewModel
Use a `@Published` property inside a `ViewModel` to track the events:
```swift
final class ItemsViewModel: ObservableObject {
    @Published var selectedItem: Item?
    
    func select(item: Item) {
        selectedItem = item
    }
}
```

The adapter then simply forwards UIKit events into the view model:
```swift
final class ItemSelectionAdapter {
    private weak var viewModel: ItemsViewModel?

    init(viewModel: ItemsViewModel) {
        self.viewModel = viewModel
    }

    func select(item: Item) {
        viewModel?.select(item: item)
    }
}
```

SwiftUI observes the view model reactively:
```swift
@StateObject private var viewModel = ItemsViewModel()

ItemsView(viewModel: viewModel)

if let selectedItem = viewModel.selectedItem {
    Text("Selected: \(selectedItem)")
}
```

---

This approach allows UIKit code to continue functioning with minimal changes while SwiftUI observes and reacts to user actions, maintaining clean separation of concerns.

:::tip[In Bullets]
- UIKit uses optional delegates; SwiftUI prefers closures and bindings.
- Introduce an adapter layer for safe interaction between UIKit and SwiftUI.
- ViewModel holds @Published state representing user actions.
- SwiftUI observes ViewModel reactively, no delegates needed.
- Migration becomes gradual and low-risk.
:::
