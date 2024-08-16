---
slug: WhatIsTheDifferenceBetweenADynamicLibraryAndAStaticLibrary
title: What is the difference between a dynamic library and a static library?
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

As your application matures and your application size and launch speed start to suffer, you'll likely find yourself re-evaluating how you integrate libraries into your project.

Libraries and frameworks can either be linked statically or dynamically.

Static libraries are collections of object files (the machine code output after compilation) grouped into a single containing resource. This library will then be copied into the larger executable that eventually runs on your device. If you’ve ever seen a file ending in.a, it’s a static library.

Imagine a suitcase filled with everything you need for your vacation. A static library is similar; everything you need in order to run your application is included in the executable itself. Static libraries **cannot contain** images, sound files, media,etc. - they can only store code files.

Dynamic libraries (`.dylibfiles`) are loaded into memorywhen needed instead of being bundled with the executable itself. All iOS and macOS system libraries are actually dynamic.

The main advantage here is that any application that relies on these dynamic libraries will benefit from all future speed improvements and bug fixes in these libraries without having to create a new release. Additionally, dynamic libraries are shared between applications, so the system only needs to maintain one copy of the resource. Since it’s shared and only loaded when needed, invoking code in a dynamic library is slower than a static one.

Let’s take a detailed look at the advantages and disadvantages:

**Static Libraries**

**Pros**

- Guaranteed to be present and the correct version at runtime.
- The application can run without any external dependencies. You don’t need to monitor library updates since the object files are part of the executable itself. As a result, it becomes standalone and can move from platform to platform.
- Faster performance compared to calls made to a dynamic library.

**Cons**

- Makes the executable larger as it simply just contains more code.
- Your application will be slower to launch as the library needs to be loaded into memory.
- Any changes in a static library require the application to be re-compiled and re-distributed.
- You have to integrate the entire library even if you only rely on a small portion of it.

**Dynamic Libraries**

**Pros**

- Doesn’t increase app size.
- Better application launch speech as the library is loaded only when needed.
- Only the relevant section of the library needed for the currently executing code is loaded instead of loading the library in its entirety.

**Cons**

- Application may crash if the library updates are not compatible with your application (i.e. business logic / iOS version).
- Application may crash if the dynamic library cannot be loaded or found.
- Calls to dynamic library functions are slower than calls made to a static library.

There’s no one size fits all answer. You’ll have to make a pragmatic decision and weigh how much you value performant library calls, app size, launch time, etc. and pick the approach or a hybrid approach that best suits your needs.
