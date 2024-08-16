---
slug: WhatAreCompilationConditions
title: What are compilation conditions?
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

Compilation conditions or compiler directives are keywords we can use to influence the
compilation process itself. We can use system compiler directives like `DEBUG` or easily define our own custom flags in our project’s build settings.

Here’s an example of compilation conditions in action:

```swift
#if DEBUG
print("...")
#else

#if targetEnvironment(simulator)
return ViewControllerA()
#else
return ViewControllerB()
#endif

#if BETA_TARGET
let image = UIImageView(image: UIImage(named: "BetaAppIcon"))
#else
let image = UIImageView(image: UIImage(named: "NormalAppIcon"))
#endif
```

Since these compiler directives are considered only at compile time, they allow us to **literally** exclude the other section of code from the compiled executable. This is useful for ensuring that any new feature you’re not quite ready to release (i.e. feature flagging) or functionality that should be specific to a platform or software version isn’t accidentally included in your final executable.

With this approach, you can instruct the compiler to include only select parts of your codebase in the final executable while still allowing all of the code to exist in the same project.
