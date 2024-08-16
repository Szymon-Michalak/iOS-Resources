---
slug: WhatDoesTheCaseIterableProtocolDo
title: What does the CaseIterable protocol do?
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

As the name suggests,`CaseIterable` is a protocol that provides a handy way of iterating through all of the individual cases in anenum.

When using anenumthat conforms to CaseIterable,you can access a collection of all of the enum’s cases by using the `allCases` property:

```swift
enum CompassDirection: CaseIterable {
    case north, south, east, west
}

// "There are 4 directions."
print("There are \(CompassDirection.allCases.count) directions.")

let caseList = CompassDirection.allCases.map({ "\($ 0 )" })
                    .joined(separator: ", ")
                    //"north, south, east, west"
print(caseList)
```

`allCases` provides the cases in the order of their declaration.

If your `enum` does not contain any associated values or availability attributes, Swift will automatically synthesize conformance to the `CaseIterable` protocol for you.
