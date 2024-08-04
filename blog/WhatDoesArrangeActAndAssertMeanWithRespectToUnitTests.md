---
slug: WhatDoesArrangeActAndAssertMeanWithRespectToUnitTests
title: What does Arrange, Act, and Assert mean with respect to unit tests?
authors: [szymon]
tags: [testing]
---

Arrange, Act, and Assert describe the ideal structure for a unit test.

Firstly, you have to **arrange** all the necessary inputsand preconditions. Secondly, you perform some **action** or operation on the object to be tested.And finally, you **assert** that the expected outcome has occurred.

Here’s an example:

```swift
class EmailValidationTests: XCTestCase {
    func testValidEmail() {
        // Arrange
        let testEmail = "aryaman@digitalbunker.dev"
        
        // Act
        let isValidEmail =EmailValidation.validate(testEmail)

        // Assert
        XCTAssertTrue(isValidEmail)
    }

    func testInvalidEmail() {
        // Arrange
        let testEmail = "aryaman@digitalbunker"

        // Act
        let isValidEmail =EmailValidation.validate(testEmail)

        // Assert
        XCTAssertFalse(isValidEmail)
    }
}
```

This approach helps improve the readability of your tests and makes the expected behavior obvious.
