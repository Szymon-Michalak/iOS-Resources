---
slug: WhatIsTheResponderChain
title: What is the Responder Chain?
authors: [ace-the-ios-interview]
tags: [uikit]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

iOS handles all user interaction - touch, press, shake, etc. - through something called the Responder Chain. This is essentially the hierarchy of all objects that have an opportunity to respond to user input.

If a particular object can’t handle the event, it passes it up to the next item in the chain. This creates a hierarchy of objects that are equipped to handle user interaction of all types.

At the top of this hierarchy, you have theUIApplicationDelegate.

If you’ve ever placed your finger in aUITextFieldon iOS, you’ll notice that the keyboard pops up immediately. From here, all subsequent user interaction events are sent to theUITextField to handle. This is because theUITextFieldis nowthe first responder - it’s the first object in the hierarchy that has a chance to respond to user interaction.

That’s why when you want to dismiss the keyboard, you have to write `textField.resignFirstResponder()` which is the `UITextField‘s` way of saying that it’s giving up control and wants to revert back to the previous Responder Chain hierarchy.
