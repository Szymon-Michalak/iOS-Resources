---
slug: WhatIsTheDifferenceBetweenIsAsAsAndAs
title: What is the difference between is, as, as?, and as!?
authors: [szymon]
tags: [swift]
---

Typecasting is a method of changing an entity from one data type to another.

These keywords are used to support typecasting in Swift and allow us to check the type of an instance or to treat an instance as one of the classes in its class hierarchy. This definition will hopefully make much more sense when we look at some examples.

It may be useful to understand the following terminology:

**Upcasting:** You cast an instance from a subclass toa superclass
**Downcasting:** You cast an instance from a superclassto a subclass

Casting doesn’t actually modify the instance or change its values. The underlying instance remains the same; it’s simply treated and accessed as an instance of the type to which it has been cast.

Here’s the class hierarchy we’ll use in the following examples:

```swift
protocol Animal {}
class Mammal: Animal {}

class Dog: Mammal {}
class Cat: Mammal {}
```

**is** (typecheck operator)
Use the typecheck operator, `is`, to check whether an instance is of a certain subclass type:

```swift
let dog = Dog()

// Output: true
print(dog is Animal)

// Output: true
print(dog is Mammal)

// Output: false
print(dog is Cat)
```


It’s important to recognize that this keyword only returns a boolean. It does not perform any conversion - it simply checks to see if a potential type conversion _could_ occur.

This keyword isn’t very popular in Swift as you can always write an equivalent expression using an `if let` and `as?` instead which would have the added benefit of actually performing the conversion for you.

We’ll see an example of this shortly.

**as** (upcasting operator)
The `as` operator allows us to upcast from a subclassto superclass (i.e. `Dog` to `Animal`).

**The compiler must be able to guarantee the validity of the cast when we use this operator.**

So, we’ll typically use it for conversions we know the compiler will be able to verify like `String` to `NSString`, `NSDate` to `Date`, or casting an objectback to its parent class type.

```swift
let animal: [Animal] = [Dog() as Animal, Cat() as Animal, Mammal() as Animal]

// Output: [ExampleApp.Dog, ExampleApp.Cat, ExampleApp.Mammal]
print(animal)
```

**as?** (conditional cast operator)
Similar to the `as` operator, `as?` also attempts to converta class’s type, but will return `nil` if the conversion fails.

Use the `as?` operator when you aren’t sure if the casting operation will succeed. In the example below, the attempt to downcast `mammal` to `Dog` succeeds,but attempting to cast `mammal` to `Cat`
evaluates to `nil`.

```swift
let mammal: Mammal = Dog()

if let dog = mammal as? Dog {
    // Valid
    print(dog)
}

// This expression will evaluate to nil
if let cat = mammal as? Cat {
    print(cat)
} else {
    print("Downcasting failed!")
}
```

**as!** (forced casting keyword)
This operator is known as the force downcasting operator and, like all other force unwrapping, will trigger a runtime error if the downcast conversion fails.

Make sure you only use this when you know the downcast will succeed!

```swift
let mammal: Mammal = Dog()

// Downcast succeeds
let dog = mammal as! Dog

// Triggers runtime error
let cat = mammal as! Cat
```
