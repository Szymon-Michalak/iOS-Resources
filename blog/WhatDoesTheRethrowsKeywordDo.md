---
slug: WhatDoesTheRethrowsKeywordDo
title: What does the rethrows keyword do?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

You’re likely already familiar with the `throws` keyword which is one of the simplest mechanisms for propagating an error in our code.

Swift also includes the `rethrows` keyword which indicates that a function accepts a throwing function as a parameter. More specifically, functions declared with the `rethrows` keyword **must have at least one** throwing function parameter.

Consider Swift’s `map` function:

```swift
public func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]
```

Simply speaking, we know that `map` takes in some function as input and applies that to every element in an array. If the passed in function doesn’tthrow, then we can call `map` without `try`:

```swift
func doubleInput(_ input: Int) -> Int {
input * 2
}

[ 1 , 2 , 3 , 4 , 5 ].map { doubleInput($ 0 ) }
```
This is all pretty normal so far, but what if the function passed into `map` can throw an error? In that case, we’ll have to call `map` with `try`:

```swift
func doubleInput(_ input: Int) throws -> Int {
    guard input != 0 else {
    throw Error.invalidRequirement
}

return input * 2
}

try [ 1 , 2 , 3 , 4 , 5 ].map { doubleInput($ 0 ) }
```
The takeaway here is that if `map` was instead declared with `throws`, in both examples we’d have to call `map` with `try` even if the passed in function didn’t throw. This would be inelegant and would clutter our code with unnecessary `try` statements.On the other hand, if `map` were declared without `throws` or `rethrows` we wouldn’t be able to pass in a throwing function to begin with.

The `rethrows` keyword allows us to handle both cases elegantly - throwing and non-throwing functions. It enables us to create functions that don’t necessarily throw errors of their own, but simply forward errors from one or more of their function parameters when applicable.
