---
slug: CanYouExplainWhatTheAtobjcKeywordDoes
title: Can you explain what the @objc keyword does?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [What is the @objc attribute? | Hacking with Swift](https://www.hackingwithswift.com/example-code/language/what-is-the-objc-attribute)
  
  **Further Reading:**
    - [Swift and Objective-C Interoperability With @objc and @objcMembers | Holy Swift](https://holyswift.app/swift-and-objective-c-interoperability-with-objc-and-objcmembers/)
    - [Using Objective-C Runtime Features in Swift | Apple Developer](https://developer.apple.com/documentation/swift/using-objective-c-runtime-features-in-swift)
</details>

:::info[TL/DR]
The `@objc` keyword makes Swift code accessible to Objective-C.
:::
If you’re applying to an older company, they’ll likely have a substantial part of their codebase still in Objective-C. So, you’ll need to be comfortable with using both Objective-C and Swift in the same project.

This attribute is used to make your Swift code accessible to the Objective-C runtime.

Anytime you have a Swift `class`, `property`, or `protocol` that you want to access in Objective-C code, you’ll need to prefix it with this keyword.

```swift
// The ViewController is accessible in an Objective-C environment
@objc class ViewController: UIViewController {

    // Visible in Objective-C
    @objc var username: String!

    // Not visible in Objective-C
    private var password: String!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

```

`@objc`, when added to a class declaration, only exposes the public init. You will have to add it manually to all other properties and methods you want to expose.

If you want to expose all public properties and methods to Objective-C, you can use `@objcMembers` instead.

:::tip[In Bullets]
- **Purpose**: 
  - The `@objc` keyword is used to expose Swift code to the Objective-C runtime.
  
- **Usage**:
  - **Classes**: Annotate Swift classes with `@objc` to make them accessible from Objective-C.
    ```swift
    @objc class MyClass: NSObject {
        // This class can be accessed from Objective-C code
    }
    ```
  - **Methods**: Use `@objc` for methods you want to be callable from Objective-C.
    ```swift
    @objc func myMethod() {
        // This method can be called from Objective-C
    }
    ```
  - **Properties**: Apply `@objc` to properties that need to be accessed in Objective-C.
    ```swift
    @objc var myProperty: String?
    ```

- **Limitations**:
  - **Private Members**: Properties and methods marked `private` are not exposed to Objective-C even if they are annotated with `@objc`.
    ```swift
    @objc private var secret: String // Not visible in Objective-C
    ```

- **Objective-C Compatibility**:
  - Enables interoperability between Swift and Objective-C, essential for projects with mixed-language codebases.
:::