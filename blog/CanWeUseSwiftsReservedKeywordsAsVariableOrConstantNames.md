---
slug: CanWeUseSwiftsReservedKeywordsAsVariableOrConstantNames
title: Can we use Swift’s reserved keywords as variable or constant names?
authors: [ace-the-ios-interview]
tags: [swift]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [Swift Reserved Keywords | Swift By Deya](https://swiftbydeya.com/swift-keywords/)
  
  **Further Reading:**
    - [Swift Lexical Structure | Swift.org](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/lexicalstructure/)
</details>

:::info[TL/DR]
Yes and it’s accomplished through the use of backticks.
:::

If you want to use a reserved keyword, for example as a `case` in an `enum`, you can just add backticks around the reserved keyword:

```swift
enum MembershipType {
    case `default`
    case premium
    case trial
}

// Free to use MembershipType.default now
```

Otherwise, without the backticks, we’d have a compilation issue.
