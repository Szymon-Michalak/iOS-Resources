---
slug: WhatIsTheDifferenceBetweenAnEscapingClosureAndANonEscapingClosure
title: What is the difference between an escaping closure and a non-escaping closure?
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

If you’ve ever tried to pass in a closure as a parameter to a function, you might have encountered a warning from Xcode prompting you to add the @escaping keyword to your parameter declaration. Let’s take a closer look at the difference between an escaping and
non-escaping closure.
In simple terms, if the closure will be called after the function returns, we’ll need to add the
@escaping keyword. Since the closure is called at a later date the system will have to store it in memory. So, because the closure is a reference type, this will create a strong reference to all objects referenced in its body.
So, @escaping is used to indicate to callers that this function can potentially introduce a retain cycle and that they’ll need to manage this potential risk accordingly.

```swift
escapingClosure {
    print("I'll execute 3 seconds after the function returns.")
}

nonEscapingClosure {
    print("This will be executed immediately.")
}

func escapingClosure(closure: @escaping (() -> ())) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        closure()
    }
}

func nonEscapingClosure(closure: (() -> ())) {
    // Some synchronous code…
    // Calls the closure immediately
    closure()
    // Some synchronous code…
}
```

In the case of the nonEscapingClosure, we can see that the closure is called immediately and will not live or exist outside the scope of our function. So, the non-escaping closure variety works for us here. This is also the default type for all closures in Swift. As an added beneﬁt, we can use the self keyword here without worrying about introducing a retain cycle.