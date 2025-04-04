---
slug: IsAnEnumAValueTypeOrAReferenceType
title: Is an enum a value type or a reference type?
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

In Swift, an `enum` is a value type (other value types include `structs` and `tuples`).

In the following example, you’ll see that changes made to one variable have no effect on the other.

This is because the value is simply copied from one variable to another - they don’t point to the same location in memory.

```swift
enum CarBrands {
    case porsche
    case mercedes
}

var porsche = CarBrands.porsche
var mercedes = porsche

porsche = .mercedes

print(porsche) // Output: mercedes
print(mercedes) // Output: porsche
```
