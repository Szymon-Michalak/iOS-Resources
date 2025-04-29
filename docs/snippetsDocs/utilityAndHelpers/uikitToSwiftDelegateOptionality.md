---
title: "Handling Delegate Optionality During UIKit to SwiftUI Migration"
description: "Learn how to safely replace optional delegates with adapter and view model patterns when progressively migrating UIKit-based apps to SwiftUI, ensuring decoupled and reactive architecture."
---

This snippet demonstrates a **best-practice strategy** for dealing with UIKit’s optional delegate patterns while migrating to SwiftUI. It uses a thin adapter layer and an observable view model to cleanly bridge UIKit user events into SwiftUI’s reactive state system, allowing safe incremental refactoring without tight coupling.

<details>

**Source:** Custom migration guidance via SzymiAI

**Author:** `SzymiAI`

**Tags:**  
`SwiftUI`, `UIKit`, `Architecture`, `Migration`, `ViewModel`

**Platforms Supported:** iOS

**Swift Version:** 6.0
</details>

## Snippet

### 1. Define the ViewModel
The ViewModel captures user interactions reactively through `@Published` properties.

```swift
final class ItemsViewModel: ObservableObject {
    @Published var selectedItem: String?

    func select(item: String) {
        selectedItem = item
    }
}
```

---

### 2. Create the Adapter
The Adapter forwards UIKit actions into the ViewModel, keeping UIKit dumb and decoupled.

```swift
final class ItemSelectionAdapter {
    private weak var viewModel: ItemsViewModel?

    init(viewModel: ItemsViewModel) {
        self.viewModel = viewModel
    }

    func select(item: String) {
        viewModel?.select(item: item)
    }
}
```

---

### 3. Update the UIKit ViewController
Use the adapter inside the UIKit controller to forward delegate actions safely.

```swift
class ItemsViewController: UIViewController, UITableViewDelegate {
    var adapter: ItemSelectionAdapter?

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = "Selected Item"
        adapter?.select(item: item)
    }
}
```

---

### 4. Wrap UIKit in SwiftUI
Expose the UIKit view controller inside SwiftUI via `UIViewControllerRepresentable`.

```swift
struct ItemsView: UIViewControllerRepresentable {
    @ObservedObject var viewModel: ItemsViewModel

    func makeUIViewController(context: Context) -> ItemsViewController {
        let controller = ItemsViewController()
        controller.adapter = ItemSelectionAdapter(viewModel: viewModel)
        return controller
    }

    func updateUIViewController(_ uiViewController: ItemsViewController, context: Context) {}
}
```

---

### 5. SwiftUI Integration
Use the SwiftUI view normally and react to ViewModel state changes.

```swift
struct ContentView: View {
    @StateObject private var viewModel = ItemsViewModel()

    var body: some View {
        VStack {
            ItemsView(viewModel: viewModel)

            if let selectedItem = viewModel.selectedItem {
                Text("Selected: \(selectedItem)")
                    .font(.headline)
            }
        }
    }
}
```

---

## Insights

During migration:
- ✅ Keep UIKit unaware of SwiftUI or business logic layers.
- ✅ Use adapters to thinly bridge between worlds without polluting UIKit controllers.
- ✅ Let SwiftUI observe `@Published` states reactively without manual event handling.
- ⚡ Gradual migrations become much safer, cleaner, and scalable.

👉 Consider this Adapter + ViewModel setup a reusable pattern for all UIKit-to-SwiftUI migrations, not just for selection actions.
