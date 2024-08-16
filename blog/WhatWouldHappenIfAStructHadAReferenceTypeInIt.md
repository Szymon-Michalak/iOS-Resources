---
slug: WhatWouldHappenIfAStructHadAReferenceTypeInIt
title: What would happen if a struct had a reference type in it?
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

In Swift, value types can contain reference types and reference types can contain value types.

In this case, the result is simply the creation of a value type with a property that has reference semantics. In other words, the reference type behaves like it always does.

Any changes made to the reference type will also be reflected in the property within the value type.

In the following example, theUserobject is a referencetype. You’ll see that changes made to the reference type modify the property in thestruct.

```swift
class User {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct Article {
    var author: User
    var id: Int
}

let user = User(name: "Aryaman", age: 26 )
let article = Article(author: user, id: 123 )

// Output: Aryaman
print(article.author.name)

user.name = "Aryaman Sharda"

// Output: Aryaman Sharda
print(article.author.name)
```
