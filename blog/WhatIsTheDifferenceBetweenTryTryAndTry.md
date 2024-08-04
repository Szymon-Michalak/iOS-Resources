---
slug: WhatIsTheDifferenceBetweenTryTryAndTry
title: What is the difference between try, try!, and try??
authors: [szymon]
tags: [swift]
---


All of these options are different ways of calling a function that can throw an error.

`try!` is the most dangerous option of the bunch andshould seldomly be used as it involves force unwrapping an `Optional` value.

It’s effectively saying that while the function in question _could_ throw an error, this will never happen. So, we want to proceed as if the called function will always return a value:

```swift
func fetchData() {
    // try! states that even though this function may return an error,
    // we know it won't happen so we can force unwrap this optional
    let unwrappedData =try! thisFunctionCanThrow()

    // The application will crash if unwrappedData is in fact nil
}

func thisFunctionCanThrow() throws -> [String] {
    // Imagine this function can throw an error
    return []
}
```
However, `try!` is sometimes used if the error is so significant and unrecoverable that no valid user flow exists - similar to the use case of `fatalError()`.

`try?` can be used to ignore any errors from the `throwing` function. If an error is thrown, the expression will resolve to `nil`. As a result, we’ll need to unwrap the returned value in order to use it.

This variation is often used when the error thrown isn’t important enough to block or change the user’s experience or it’s permissible to have the function call fail silently:

```swift
func fetchData() {
    // The result from `thisFunctionCanThrow` will either be nil
    // or a [String] which we'll need to unwrap to access
    if let unwrappedData = try? thisFunctionCanThrow() {
        print("Successfully retrieved data: \(unwrappedData)")
    }
}

func thisFunctionCanThrow() throws -> [String] {
    // Imagine this function can throw an error
    return []
}
```

`try` is the safest option and forces us to explicitly catch and handle any issues that occur:

```swift
func fetchData() {
    // This is a safe approach and allows us to decide how we
    // handle the error
    do {
        let data = try thisFunctionCanThrow()
        print("Successfully retrieved data: \(data)")
    } catch {
        print("An error occurred:\(error)")
    }
}

func thisFunctionCanThrow() throws -> [String] {
    // Imagine this function can throw an error
    return []
}
```
