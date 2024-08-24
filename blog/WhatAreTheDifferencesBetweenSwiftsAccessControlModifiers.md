---
slug: WhatAreTheDifferencesBetweenSwiftsAccessControlModifiers
title: What are the differences between Swift’s access control modifiers?
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

Access controls allow us to restrict parts of our code from other source code files and modules.

This enables us to abstract away certain implementation details and instead share a preferred interface through which our code should be accessed and used.

Swift provides five different access level modifiers that can be used on classes, structs, enums, properties, methods, and initializers.

Going from the least to the most restrictive:

**open:** classes and methods marked asopencan be subclassedand overridden outside of their
defining module.

**public:** provides read / write access to an entityto all other parts of the code regardless of the
defining module.

**internal:** is the default access level in Swift. Propertiesdeclared asinternalare accessible in the scope of their defining module, but are inaccessible by parts of the code belonging to
other modules.

**fileprivate:** entities marked asfileprivateare visibleand accessible from Swift code declared in the same source file.

**private:** is the most restrictive access level andensures that a property is only accessible inside their defining type. This means that properties and methods declared as private are only accessible within the class or structure in which they are defined.
