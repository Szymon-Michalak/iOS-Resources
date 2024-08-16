---
slug: HowDoYouUseTheResultType
title: How do you use the Result type?
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

The `Result` type is a convenient way for us to handleboth the success and failure cases of an operation while maintaining code readability.

Under the hood, the `Result` type, is an `enum` with two cases:

```swift
enum Result<Success, Failure> where Failure : Error {
    /// A success, storing a `Success` value.
    case success(Success)
    /// A failure, storing a `Failure` value.
    case failure(Failure)
}
```

The success case accepts any generic `Success` type(includingVoid) and failure takes the generic `Failure` type as its associated value.

Note: Whatever you use for the `Failure’s` `associatedvalue` _must_ implement the `Error` protocol.

In the example below, you’ll see that we’re creating a `PrimeNumberError` enum with multiple cases. This approach allows us to have much greater specificity with our error messaging and has the added benefit of forcing us to handle each error case explicitly.

```swift
enum PrimeNumberError: Error {
    case zero
    case negative
    case tooBig
}

func isPrimeNumber(num: Int) -> Result<Bool, PrimeNumberError> {
    guard num < 0 else {
        return .failure(.negative)
    }

    guard num > 0 else {
        return .failure(.zero)
    }

    guard num < 1000 else {
        return .failure(.tooBig)
    }

    return .success(primeNumberChecker(num: num))
}

switch isPrimeNumber(num: 23 ) {
case .success(let isPrime):
    print("The number \(isPrime? "is" : "is not") prime")
case .failure(.tooBig):
    print("The number is too big for this function.")
case .failure(.negative):
    print("A prime number can't be negative.")
case .failure(.zero):
    print("A prime number has to be greater than 1.")
}
```

`Result` is available in Swift 5.0+.
