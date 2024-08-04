---
slug: HowCanYouCreateAMethodWithDefaultValuesForItsParameters
title: How can you create a method with default values for its parameters?
authors: [szymon]
tags: [swift]
---

When we declare a function in Swift, we can specify defaults for our parameters by specifying values within the method declaration:

```swift
func sayHello(name: String ="reader")
```

Now, we can call this function directly without having to explicitly specify any parameters as the default values will be used instead.

If the function contains parameters that don’t have a default value specified, you’ll need to specify a value for that parameter as usual. Otherwise, the compiler will return a “missing argument” error.

Given this example function:
```swift
func sayHello(name: String ="reader") {
    print("Hello, \(name)")
}
```

These two function calls are equivalent:
```swift
sayHello()
sayHello(name: "reader")
```

Now, let’s consider this function declaration:
```swift
func logStatement(prettyPrint: Bool = false, includeTimestamp: Bool,
enableVerboseMode: Bool = false, message: String) {}
```

As you can see, there are several parameters with default values specified, but `includeTimestamp` and `message` are explicitly required. When we create functions with a mix of parameters like this, Xcode’s auto-complete will help enumerate all of the valid variations of the call to our function.