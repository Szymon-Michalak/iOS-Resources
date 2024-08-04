---
slug: WhatAreUITests
title: What are UI tests?
authors: [szymon]
tags: [testing]
---


User interface tests allow us to test our application’s behavior from the user’s perspective. It helps us to ensure that our application’s UI interactions, animations, and various user flows continue to work correctly as our application evolves.

While unit testing focuses on the inputs and outputs of the functions within our codebase, UI Testing aims to verify user-facing behavior.

To implement UI tests, we will continue to use theXCTestframework.XCTestwill then leverage the iOS Accessibility System to interact with the various UI components specified by the test.

For example, a simple UI test that ensures the correctness of a login form might look like this:
```swift
import XCTest

class LoginViewUITest: XCTestCase {
    func testUserLogin() {
        // Launch app
        let app = XCUIApplication()
        app.launch()

        // Simulate button press
        app.buttons["loginButton"].tap()

        // Asserts that the Login form is shown correctly
        XCTAssertTrue(app.textFields["usernameTextField"].exists)
        XCTAssertTrue(app.textFields["passwordTextField"].exists)
    }
}
```

Xcode can also record and automatically create UI tests based on your interactions with theapplication. For most UI tests, you can just hit Record in Xcode, walk through some flow in your application, and then add the automatically generated test to your test suite.
