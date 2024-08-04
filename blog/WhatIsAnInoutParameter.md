---
slug: WhatIsAnInoutParameter
title: What is an inout parameter?
authors: [szymon]
tags: [swift]
---

Whenever you pass a value type into a function, only a copy of the value is passed along. As a result, even if you attempt to change the value of that parameter inside the function, the variable at the calling site will still maintain its original value.

```swift
var currentAge = 26

func updateAge(passedInAge: Int){
    var passedInAge = passedInAge
    passedInAge = 42
    print(passedInAge) // 42
    print(currentAge) // 26
}

updateAge(passedInAge: currentAge)
```

If we want to change the value of the parameter itself instead of just working with a copy of the data, we’ll need to add the `inout` keyword. This will allow us to make changes directly to the variable that was passed in even if it’s a value type.

We’ll need to use the `&` symbol when providing an `inout` parameter:

```swift
var currentAge = 26

func updateAgeWithInout(passedInAge: inout Int) {
    passedInAge = 42
    print(passedInAge) // 42
    print(currentAge) // 42
}

// currentAge is 26 before the call and 42 after
updateAgeWithInout(passedInAge: &currentAge)
```

The `inout` keyword is used very often in Swift and enables syntactic sugar like the `+=` operator which modifies the value of the variable on the left-hand side of the operator in place.
