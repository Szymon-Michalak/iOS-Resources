---
slug: WhatIsOperatorOverloading
title: What is operator overloading?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]
Operator overloading lets you redefine how standard operators (like `+`, `-`, `*`) behave when used with your own custom types. This can make your code more intuitive and expressive, especially when modeling real-world concepts.
:::

Operator overloading allows you to customize the behavior of Swift’s built-in operators when working with your own types. It’s a powerful language feature that can significantly improve code readability when used appropriately.

### Why use operator overloading?

Imagine you're building an e-commerce app and want to model prices using a custom type:

```swift
struct Money {
    let value: Int
    let currencyCode: String
}
```

Without operator overloading, adding two `Money` instances would require a verbose method. But by overloading the `+` operator, we can make summing up prices seamless and intuitive.

### How to overload an operator

To redefine an operator for your type, implement a static function with the operator symbol. For example:

```swift
struct Money {
    let value: Int
    let currencyCode: String

    static func + (left: Money, right: Money) -> Money {
        return Money(
            value: left.value + right.value,
            currencyCode: left.currencyCode
        )
    }
}
```

Now you can do this:

```swift
let shoppingCartItems = [
    Money(value: 20 , currencyCode: "USD"),
    Money(value: 10 , currencyCode: "USD"),
    Money(value: 30 , currencyCode: "USD"),
    Money(value: 50 , currencyCode: "USD"),
]

// Output: Money(value: 110, currencyCode: "USD")
print(shoppingCartItems.reduce(Money(value: 0 , currencyCode: "USD"), +))
```

### Types of operators

Swift supports three categories of operators:

- **Prefix:** Appears before a value.
- **Postfix:** Appears after a value.
- **Infix:** Appears between two values (most common for arithmetic).

You can also define your own custom operators for each kind. Here's how:

#### Prefix operator

```swift
prefix operator √

prefix func √ (value: Double) -> Double {
    return sqrt(value)
}

let result = √9 // 3.0
```

#### Postfix operator

```swift
postfix operator °

postfix func ° (value: Double) -> Double {
    return value * .pi / 180
}

let angleInRadians = 90° // π/2
```

#### Infix operator

```swift
infix operator **: MultiplicationPrecedence

func ** (base: Int, exponent: Int) -> Int {
    return Int(pow(Double(base), Double(exponent)))
}

let power = 2 ** 3 // 8
```

When defining a custom infix operator, you can also assign it a precedence group like `AdditionPrecedence`, `MultiplicationPrecedence`, etc., to control how it interacts with other operators.
