---
slug: AreClosuresValueOrReferenceTypes
title: Are closures value or reference types?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - 
  
  **Further Reading:**
    - [Closures Are Reference Types | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/#Closures-Are-Reference-Types)
</details>

:::info[TL/DR]
Closures are reference types.
:::

When we use closures, we want them to be able to reference all of the variables from their surrounding context (like class and local variables).
This means when the closure modifies acaptured reference-type variable in its definition, we’re also affecting the variable’s value outside of the closure's scope.

```swift
var money = Money(value: 20 , currencyCode: "USD")

//Output: Money(value: 20, currencyCode: "USD")
print(money)

let closure = {
    money = Money(value: 200 , currencyCode: "USD")
}

closure()

//Output: Money(value: 200, currencyCode: "USD")
print(money)
```

If closures were value types, then they would only have access to a **_copy_** of the variables in their surrounding context instead of a direct reference to the variables themselves.
So, if the value of any of these referenced variables changed, the closure would be none the wiser and would be operating on the now out-of-date values.

Sometimes, we’ll want this behavior though.

We can specify a capture list in our closure’s definition which will create an immutable read-only copy of the variables we’ve listed.
This way, changes made within the closure’s definition will not affect the value of the variables outside of the closure.

```swift
var money = Money(value: 20 , currencyCode: "USD")

//Output: Money(value: 20, currencyCode: "USD")
print(money)

let closure = { [money] in
    print(money)
}

money = Money(value: 200 , currencyCode: "USD")

//Output: Money(value: 20, currencyCode: "USD")
closure()

//Output: Money(value: 200, currencyCode: "USD")
print(money)
```

In this example, even though we’re modifying the money variable before we execute the closure, the closure only has access to a copy of the variable’s value - not a reference to the variable itself.
So, any changes made to money outside of the closure will not affect the value of money the closure operates on.

:::tip[In Bullets]
- **Closures are reference types**: They capture and maintain a reference to variables from their surrounding context.

- **Effect of Closures**: Modifications within a closure affect the original variables outside the closure.

- **Capture List**: Use `variable` in a closure to capture a read-only copy of the variable, preventing modifications outside the closure from affecting it.
:::