---
slug: WhileIteratingThroughAnArrayHowCanWeGetBothTheValueAndTheIndex
title: While iterating through an array, how can we get both the value and the index?
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

We can accomplish this easily with the help of the `enumerated()`function.
```swift
let title = ["Ace", "The", "iOS", "Interview"]

for (index, value) in title.enumerated() {
    print("Index: \(index), Value: \(value)")
}

// Index: 0, Value: Ace
// Index: 1, Value: The
// Index: 2, Value: iOS
// Index: 3, Value: Interview
```
The `enumerated()` function returns a sequence of pairs composed of the index and the value of each item in the array. Then, we can use tuple destructuring and aforloop to go through every element in the sequence.

A common mistake is to apply this function on a `Dictionary`.If you do this, the `Dictionary` will be treated as an array of tuples and your output will look like this:

```swift
let userInfo: [String: Any] = ["age": 25 , "gender": "male"]
for (index, value) in userInfo.enumerated() {
    print("Index: \(index), Value: \(value)")
}

// Index: 0, Value: (key: "age", value: 25)
// Index: 1, Value: (key: "gender", value: "male")
```
