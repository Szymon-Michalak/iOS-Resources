---
slug: WhatIsTheDifferenceBetweenDoubleEqualsAndTripleEquals
title: What is the difference between == and ===?
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

In the example below, we have a simpleEngineclassthat implements the `Equatable` protocol. This allows us to provide a custom implementation for the `==` operator.

We say that two `Engines` are equal if the `horsepower` is the same. So, as long as the `Int` values match, `==` will return `true`.

```swift
class Engine: Equatable {
    var horsepower: Int

    init(horsepower: Int) {
        self.horsepower = horsepower
    }

    static func == (lhs: Engine, rhs: Engine) -> Bool {
        lhs.horsepower == rhs.horsepower
    }
}

let engine1 == Engine(horsepower: 100 )
let engine2 == Engine(horsepower: 100 )
let engine3 == Engine(horsepower: 200 )

engine1 == engine2 // true
engine2 == engine3 // false
```
With `===` we’re asking if the objects on either sideof the operator point to the same reference.
In other words, do they point to the same place in memory?

In the following example, when we compare `engine1` to `engineCopy`(which is also referencing the same memory location), `===` returns `true`.

```swift
let engine1 = Engine(horsepower: 200 )
let engine2 = Engine(horsepower: 200 )
let engineCopy = engine1

engine1 === engineCopy // true
engine2 === engineCopy // false
```

However, in the second check, we can see that `engine2` and `engineCopy` are pointing to entirely different objects, so even though thehorsepoweris the same,`===` returns `false`.
