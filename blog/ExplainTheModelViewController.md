---
slug: ExplainTheModelViewController
title: Explain the Model-View-Controller (MVC) design pattern
authors: szymon
tags: [design_patterns, ios, swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source**: [Apple Developer Documentation - Model-View-Controller](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)

  **Additional Sources:**
  - [Understanding MVC in iOS](https://ioswift.dev/docs/resourcesDocs/channels/EssentialDeveloper#key-points-1)`
  
  **Further Reading:**
  - [Testing & Refactoring existing iOS/Swift code, MVC vs MVVM, Singleton vs DI](https://ioswift.dev/docs/resourcesDocs/channels/EssentialDeveloper#testing--refactoring-existing-iosswift-code-mvc-vs-mvvm-singleton-vs-di--ios-dev-live-mentoring)b
  - [Beyond MVC: Exploring MVVM and VIPER](https://ioswift.dev/docs/resourcesDocs/channels/EssentialDeveloper#summary-of-contents-1) 

</details>

:::info[TL/DR]
The Model-View-Controller (MVC) design pattern separates an application’s data (Model), user interface (View), and control logic (Controller) into three interconnected components, promoting modularity and ease of maintenance.
:::

The Model-View-Controller (MVC) design pattern is a widely used architectural pattern in software development, particularly in iOS. It divides an application into three main components:

- **Model**: Represents the data and the business logic of the application. The model is responsible for managing the data, whether it's from a database, API, or other sources. It is independent of the user interface.
  
- **View**: The view is responsible for displaying the user interface and presenting data to the user. It observes the model for changes and updates the UI accordingly. In iOS, views are typically represented by `UIView` or `UIViewController` objects.

- **Controller**: The controller acts as an intermediary between the model and the view. It handles user input, updates the model, and refreshes the view. Controllers in iOS are commonly represented by `UIViewController` classes.

### How MVC Works:
1. **User Interaction**: The user interacts with the app through the view (e.g., tapping a button).
2. **Controller Handling**: The controller captures this interaction and processes the input.
3. **Model Update**: The controller updates the model based on the interaction.
4. **View Refresh**: The view observes changes in the model and updates the UI accordingly.

```swift
// Example of MVC in an iOS application

// Model
struct User {
    var name: String
    var age: Int
}

// View
class UserView: UIView {
    var nameLabel: UILabel = UILabel()
    var ageLabel: UILabel = UILabel()
    
    func displayUser(user: User) {
        nameLabel.text = user.name
        ageLabel.text = "\(user.age)"
    }
}

// Controller
class UserController: UIViewController {
    var userView: UserView!
    var userModel: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userModel = User(name: "John Doe", age: 25)
        userView.displayUser(user: userModel)
    }
}
```

### Key Benefits:
- **Separation of Concerns**: Each component has a distinct responsibility, making the code easier to maintain and extend.
- **Reusability**: Components can be reused across different parts of the application or in other projects.
- **Testability**: With the logic separated, individual components can be tested independently.

### Additional Details
While MVC is a straightforward and well-known pattern, it can lead to massive view controllers (often called "Massive View Controller" problem) if not carefully managed. In complex applications, additional patterns like MVVM (Model-View-ViewModel) or VIPER might be considered to address this issue .

:::tip[In Bullets]
- **Model**: Manages data and business logic.
- **View**: Displays data and manages user interface.
- **Controller**: Handles user input and updates the model.
:::
