---
slug: WhatAreSwiftsDifferentAssertionOptions
title: What are Swift’s different assertion options?
authors: [szymon]
tags: [general]
---

Assertions allow us to terminate the execution of our program if a condition is not met at runtime.

While this may seem like a drastic reaction, this feature makes the debugging process far easier. By terminating the execution of our app in this way, we give ourselves an opportunity to investigate _why_ our assertion failed and to make whateverchanges are necessary.

Swift provides three different assertion types:

**assert()**

This is useful for basic debugging and allows you to assert that a condition is true before the execution of your program can continue. In the event that the condition is not satisfied, the system will terminate your application, but will allow it to remain in a debuggable state.

`assert()` is only evaluated in Debug mode and is disabledin all Release builds.

This enables you to easily sanity check your implementation during development while ensuring that your end user’s experience is unaffected.
```swift
assert(age > 0 && age < 150 , "Either an invalid age or a medical marvel.")
assert(user.isAuthenticated, "User should be authenticated at this stage.")

guard let storageKey = model.key as? String else {
    // assertionFailure() allows us to trigger the failure case directly
    // without having to evaluate a conditional expression
    assertionFailure("Cannot save model without a storagekey")
    return
}
```

It’s important to note, though, that your project’s optimization settings can change the behaviorof this function:
- In Playground and `-Onone` builds (the default for Xcode’sDebug configuration), if the condition evaluates to false, the program will print the specified message and stop execution, but will remain in a debuggable state.
- In `-O` builds (the default for Xcode’s Release configuration),the `assert()` is not evaluated.
- In `-Ounchecked` builds, the `assert()` is not evaluated, but the optimizer may assume that it always evaluates to true which can easily mask serious programming errors.

**precondition()**

You can think of `precondition()` as `assert()` with support for Release builds. This assertion type will also stop your program’s execution when a condition is not met.

To clarify the difference between `assert()` and `precondition()` further, `assert()` is generally used for sanity checking your code during development whereas `precondition()` is used for guarding against situations that, if they happen, mean your program cannot reasonably proceed. For example, you might use `precondition()` to validate that the arguments passed into your function match the requirements specified by your documentation.
```swift
precondition(state != .invalid,"App in unknown and non-recoverable state.")
precondition(containers.count > 0 , "Empty containerstack.")
preconditionFailure("Cannot cast\(type(of: objCValue)) to \(Value.self)")
preconditionFailure("Plist file not found")
```

Similar to `assert()`, the particular compiler optimizationsused in your project can influence the function’s behavior:

- In Playground and `-Onone` builds (the default for Xcode’sDebug configuration), if the precondition()evaluates to false, the program willprint a message and stop execution, but will remain in a debuggable state.
- In `-O` builds (the default for Xcode’s Release configuration),if theprecondition() evaluates to false, the program’s execution is stopped.
- In `-Ounchecked` builds, `precondition()` is not evaluated,but the optimizer may assume that it always evaluates to true which can easily mask serious programming errors.

**fatalError()**

This assertion type is used in situations where the application has encountered a significant enough error that there is no reasonable way to proceed. If you use `fatalError()` to handle such a scenario, the application will immediately terminate in both Debug and Release builds.

```swift
fatalError("Unable to load image asset named \(name).")
fatalError("init() has not been implemented")
fatalError("ViewController is not of the expected class \(T.self).")
```

The use of this assertion type can be a little polarizing. You’ll find that some developers are vehemently against using it while others see certain advantages and respect the deliberateness it offers. Regardless of which camp you find yourself in, you’ll want to use this sparingly and only when your application enters a truly unexpected and unrecoverable state.

Unlike the other options we’ve discussed so far, `fatalError()` will work regardless of any compilation or optimization settings you’ve enabled on your project.

By using these different types of assertion mechanisms, we can articulate the assumptions in our code and, as a result, write code that is extremely clear about the behavior we expect.
