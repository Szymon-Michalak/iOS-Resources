---
slug: WhatDoesTheFilesOwnerDo
title: What does the File’s Owner do?
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

When you load a `.xib` file and specify the `owner` property,the class responsible for loading the `.xib` now becomes the File's Owner.
```swift
open func loadNibNamed(_ name: String, owner: Any?,
options: [UINib.OptionsKey : Any]? = nil) -> [Any]?

// In ViewController.swift
Bundle.main.loadNibNamed("ExampleView", owner: self, options: nil)
```

Put simply, the File’s Owner is responsible for loading the `.xib` and facilitating communication between the code and the elements defined in the view. In the example above, `ViewController` initiates loading the `.xib` file therebymaking it the File’s Owner. As a result, it will now serve as the middle-man between the `.xib` file and our application’s code.

Once the `.xib` file has completed loading, the File’sOwner is responsible for managing the view's contents and binding all of the declared `IBOutlets` and `IBActions` in your code to the
view's corresponding UI components.

When we specify the File’s Owner in our `.xib` directly, we're effectively assigning a placeholder value that says -"This class will load me, interact with my UI, and create the necessary bindings to my various UI elements".

It's important to recognize that the File’s Owner is an independent entity and not a part of, nor bound to, the `.xib`  itself - it’s just the class that assumes this middle-man responsibility.

