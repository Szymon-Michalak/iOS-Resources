---
slug: CanYouExplainWhatTheAtobjcKeywordDoes
title: Can you explain what the @objc keyword does?
authors: [szymon]
tags: [swift]
---

If you’re applying to an older company, they’ll likely have a substantial part of their codebase still in Objective-C. So, you’ll need to be comfortable with using both Objective-C and Swift in the same project.

This attribute is used to make your Swift code accessible to the Objective-C runtime.

Anytime you have a Swift class, property, or protocol that you want to access in Objective-C code, you’ll need to prefix it with this keyword.

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

If you want to expose all public properties and methods to Objective-C, you can use @objc Members instead.