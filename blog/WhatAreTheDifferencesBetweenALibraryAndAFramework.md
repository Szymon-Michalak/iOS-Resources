---
slug: WhatAreTheDifferencesBetweenALibraryAndAFramework
title: What are the differences between a library and a framework?
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
The difference between a library and a framework is that you’ll typically call a library, but a framework will call you.
:::



**Library**

A library is a collection of functions that each perform some work and then return control to the caller. Libraries can only contain executable code; no other assets or media.

Libraries usually contain highly tested and sophisticated code meant to address some particular problem. So, it’ll often make sense to reuse code written by other developers rather than implementing it from scratch yourself. For example, many libraries exist for complicated topics like physics, audio processing, image manipulation, etc. Clearly, it would be unrealistic to implement all of that yourself.

You can think of a library like a trip to IKEA. You already have a home filled with furniture, but there's a few rooms that you need help furnishing. Instead of making it yourself, you can go to IKEA (the library) and pick and choose the relevant pieces you need. Throughout this experience, you - the programmer - are in control.

An example on iOS would be the open-source Charts library which lets you easily create bar, line, and pie graphs. It provides all of the functionality, but it's up to the programmer to decide exactly when, where, and how it should be used.

**Framework**

A framework is similar to a library, but instead leaves openings for you to influence its behavior and execution. This is accomplished most commonly through subclassing, dependency injection, and delegation. Unlike libraries, frameworks can contain other media types (images, audio, etc.) - not just code.

The main distinction between a library and a framework is that there is an inversion of control. When you use a framework, you'll have a few opportunities to plug in your code, but the framework is in charge of when - and if at all - your custom code is executed. The framework has effectively inverted the control of the program; it's telling the developer what it needs and decides when to execute it.

Consider a framework like Vapor or a location tracking framework. They both provide complicated functionality, but leave little openings for you to introduce your own custom logic.
