---
slug: WhatIsAUnitTest
title: What is a unit test?
authors: [szymon]
tags: [testing]
---

A unit test is a type of automated test used to validate the correctness of a piece of code by providing an exhaustive list of inputs and ensuring that the expected outputs are returned.

Xcode provides easy support for writing unit tests by way of theXCTestframework. In our app’s testing target, we could write a simple test like this and assert that the output from the function call matches our expected output:
```swift
func testOnlyEvenNumbersFilter() {
    let input = [ 2 , 3 , 4 , 5 , 6 , 7 ]
    let onlyEvens = Math.onlyEvens(input)
    XCTAssertEqual([ 2 , 4 , 6 ], onlyEvens)
}
```
Note: When you’re creating tests in your testing target, the first word of the function name needs to betestin order for Xcode to register itas a unit test.

Unit testing can be a great way to protect our codebase against regressions and is far more scalable than relying on manual testing alone.
