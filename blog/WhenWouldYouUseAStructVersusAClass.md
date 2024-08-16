---
slug: WhenWouldYouUseAStructVersusAClass
title: When would you use a struct versus a class?
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

:::

Typically, you’ll want to use astructif any of thefollowing conditions apply:

- Use astructwhen encapsulating simple data types
- When you need thread safety asstructsare passed-by-value
- You want pass-by-value semantics
- When the properties defined inside the entity are mostly value types
- You don’t need inheritance
- You don’t need mutability
- When you want automatic memberwise initializers

Apple’s recommendation is to start with astructandtransition to aclassonly if you need
inheritance or pass-by-reference semantics. However, if your entity is storing a lot of data then
it may make sense to use aclassso you’re only incurringthe memory cost once.
