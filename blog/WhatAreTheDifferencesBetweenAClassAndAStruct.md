---
slug: WhatAreTheDifferencesBetweenAClassAndAStruct
title: What are the differences between a class and a struct?
authors: [szymon]
tags: [general]
---


| Features               | Classes     | Structs |
|------------------------|-------------|---------|
| Type                   | Reference   | Value   |
| Implement Protocols    | Yes         | Yes     |
| Define Properties      | Yes         | Yes     |
| Define Methods         | Yes         | Yes     |
| Define Initializers    | Yes         | Yes     |
| Be Extended            | Yes         | Yes     |
| Support Inheritance    | Yes         | No      |

The main takeaway here is that aclassis a **reference-type** and astructis a **value-type**.

When you pass reference-types around in your program (i.e. as a parameter), you are actually passing a direct reference to the memory location of that object. As a result, different parts of your program can easily share and modify your object since they’re all referencing the exact same place in memory.

When you pass astructorenumto a function, you’reonly passing along a copy of the data in them. So, even if you modify properties of the passed in value-type, the original one remains unchanged as you’re effectively just modifying a duplicate. This type of behavior is called pass-by-value semantics and is helpful in preventing situations where one part of the code inadvertently changes values or unknowingly affects the application’s state.

Both aclassand astructcan implementprotocols,define properties, methods, initializers, and be extended, but only aclasscan support inheritanceand by extension polymorphism.

Since a structrequires less overhead to create andis safer to use due to it’s immutability and pass-by-value semantics,Apple’s recommendation isto start with astructwhen you can and change to aclassonly when needed.

However, if the entity you’re working with contains a lot of data, then it’s probably useful for it to be aclassso you can share a reference to it andonly incur the memory cost once.
