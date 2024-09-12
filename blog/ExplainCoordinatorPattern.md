---
slug: ExplainCoordinatorPattern
title: Explain the Coordinator Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Coordinator Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Coordinator Pattern** centralizes navigation logic in iOS applications, organizing flow logic between view controllers by separating that responsibility into a dedicated coordinator object.
:::

### Concept Overview

The **Coordinator Pattern** is a structural design pattern that manages the flow between view controllers, decoupling the navigation logic from individual view controllers. The key components of this pattern are:

1. **Coordinator Protocol**: Defines the methods that all coordinators must implement.
2. **Concrete Coordinator**: Implements the coordinator protocol and manages specific flows.
3. **Router Protocol**: Manages the presentation and dismissal of view controllers.
4. **Concrete Router**: Implements the router protocol, handling actual navigation actions.
5. **View Controllers**: Delegates navigation logic to the coordinator, keeping their logic focused on UI concerns.

### Playground Example

Here is the complete example from the book that demonstrates the **How to Code** flow using the **Coordinator Pattern**:

```swift
import UIKit

// MARK: - Router Protocol
public protocol Router: class {
    func present(_ viewController: UIViewController, animated: Bool)
    func present(_ viewController: UIViewController, animated: Bool, onDismissed: (() -> Void)?)
    func dismiss(animated: Bool)
}

extension Router {
    public func present(_ viewController: UIViewController, animated: Bool) {
        present(viewController, animated: animated, onDismissed: nil)
    }
}

// Concrete Router
public class NavigationRouter: NSObject, Router, UINavigationControllerDelegate {
    private let navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
        navigationController.delegate = self
    }
    
    public func present(_ viewController: UIViewController, animated: Bool, onDismissed: (() -> Void)?) {
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    public func dismiss(animated: Bool) {
        navigationController.popViewController(animated: animated)
    }
}

// MARK: - Coordinator Protocol
public protocol Coordinator {
    var children: [Coordinator] { get set }
    var router: Router { get }
    func start()
}

// MARK: - HowToCodeCoordinator
public class HowToCodeCoordinator: Coordinator {
    public var children = [Coordinator]()
    public let router: Router
    private lazy var stepViewControllers: [StepViewController] = {
        return [
            StepViewController.instantiate(delegate: self, buttonColor: .red, text: "First step", title: "Step 1"),
            StepViewController.instantiate(delegate: self, buttonColor: .orange, text: "Second step", title: "Step 2"),
            StepViewController.instantiate(delegate: self, buttonColor: .green, text: "Third step", title: "Step 3")
        ]
    }()
    
    public init(router: Router) {
        self.router = router
    }
    
    public func start() {
        let firstViewController = stepViewControllers.first!
        router.present(firstViewController, animated: true, onDismissed: nil)
    }
    
    public func showNextStep(from viewController: StepViewController) {
        guard let index = stepViewControllers.firstIndex(of: viewController),
              index + 1 < stepViewControllers.count else {
            return
        }
        let nextViewController = stepViewControllers[index + 1]
        router.present(nextViewController, animated: true, onDismissed: nil)
    }
}

// MARK: - StepViewController
public class StepViewController: UIViewController {
    var delegate: StepViewControllerDelegate?
    var buttonColor: UIColor?
    var stepText: String?
    var stepTitle: String?

    static func instantiate(delegate: StepViewControllerDelegate, buttonColor: UIColor, text: String, title: String) -> StepViewController {
        let viewController = StepViewController()
        viewController.delegate = delegate
        viewController.buttonColor = buttonColor
        viewController.stepText = text
        viewController.stepTitle = title
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = buttonColor
        let label = UILabel()
        label.text = stepText
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(type: .system)
        button.setTitle("Next Step", for: .normal)
        button.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 100, width: 200, height: 50)
        view.addSubview(button)
    }

    @objc func nextTapped() {
        delegate?.stepViewControllerDidPressNext(self)
    }
}

// MARK: - StepViewControllerDelegate Protocol
public protocol StepViewControllerDelegate {
    func stepViewControllerDidPressNext(_ controller: StepViewController)
}

extension HowToCodeCoordinator: StepViewControllerDelegate {
    public func stepViewControllerDidPressNext(_ controller: StepViewController) {
        showNextStep(from: controller)
    }
}

// Example usage
let navigationController = UINavigationController()
let router = NavigationRouter(navigationController: navigationController)
let coordinator = HowToCodeCoordinator(router: router)
coordinator.start()

PlaygroundPage.current.liveView = navigationController
```

### How It Works:
- **Coordinator**: The `HowToCodeCoordinator` manages the sequence of view controllers and handles navigation between steps.
- **Router**: The `NavigationRouter` is responsible for presenting and dismissing the view controllers.
- **View Controllers**: Each `StepViewController` displays content and delegates the "next" action back to the coordinator.

### When to Use

- **Managing complex navigation**: If your app has multiple view controllers with complex navigation flows.
- **Decoupling navigation**: When you want to keep navigation logic separate from view controllers to improve modularity and testability.

### When to Be Careful

1. **Overuse in Simple Apps**: If your app is simple with minimal navigation, using the Coordinator Pattern may introduce unnecessary complexity. In these cases, sticking to view controller-based navigation can be more efficient.
   
2. **Memory Management**: Coordinators that manage a large number of children or view controllers must be careful with memory management, particularly in terms of retaining view controllers or child coordinators for too long. Use weak references to avoid memory leaks.
   
3. **Handling Deep Links**: When implementing deep linking, the coordinator must be able to navigate to specific screens based on external inputs. This can make the flow logic more complex, requiring additional work to manage and handle multiple potential entry points into the flow.
   
4. **Maintaining State Across Coordinators**: Managing application state when using multiple coordinators can become difficult. You need to decide how to share state between coordinators and ensure that state is managed appropriately across flows without adding too much interdependence between them.
   
5. **Testing**: Although the Coordinator Pattern makes the navigation logic more modular, testing flows becomes more complex as the number of coordinators grows. Coordinators often need to be mocked or stubbed in order to fully test the logic.

---

:::tip[In Bullets]
- The **Coordinator Pattern** centralizes navigation logic and improves modularity.
- Involves **coordinators**, **routers**, and **view controllers**.
- Useful for managing complex navigation flows.
- Be cautious of overusing it in small apps and handling memory and deep linking carefully.
:::
