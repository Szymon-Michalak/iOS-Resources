---
slug: WhatIsARawValueInAnEnum
title: What is a raw value in an enum?
authors: [szymon]
tags: [swift]
---


Enumerations provide a common type for a group of related values thereby enabling you to work with those values type-safely within your code.

While we can use associated values to relate some required data to an `enum` case, we can use an `enum` ’s `rawValue` property in instances where a hard-coded default value will suffice.

Here, `ASCIIControlCharacter` specifies that the type of its `rawValue` is going to be a `Character`.

This, in turn, requires us to provide a hard-coded `Character` for every case in our `enum`. So, we can easily link an ASCII character to its respective `enum` case.

```swift
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
```

By default, the specified `rawValue` type can be a `String`, `Character`, `Integer`, or
`Float`, but you can add support for a custom type by adding conformance to `RawRepresentable`.

The hard-coded value you assign must be unique within the `enum’s` declaration.

If our enumeration’s `rawValue` is an `Integer` or a `String`,Swift will automatically assign default values for us. However, we’re still able to override the default values if need be.

When it comes toIntegers, the implicit value foreach case is one more than the last. If no value is set for the first case, therawValuewillstart counting up from 0.

Consider thisenumthat specifies the planets and their respective position from the Sun:
```swift
enum Planet: Int {
    case mercury = 1 , venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

Since we’ve specified an explicit value of 1 for mercury(instead of the Swift default of 0),
`Planet.mercury`’s `rawValue` will be 2, `Planet.earth` will be 3, and so on.

In the case of a `String`, Swift will set the default `rawValue` to match the `enum` case’s name. In the following example, we don’t need to explicitly provide any `rawValues` as the Swift defaults
will work for us.
```swift
enum CompassPoint: String {
    case north, south, east, west
}
```

`CompassPoint.north.rawValue` will be “north”, `CompassPoint.south.rawValue` will be “south”, and so on.

If we define an enumeration with `rawValue` support, Swift will automatically add an initializer that allows us to go from the `rawValue` to the corresponding type.

For example, we could create a reference to `Planet.uranus` by simply writing:
```swift
let possiblePlanet = Planet(rawValue: 7 )
// possiblePlanet is of type Planet? and equals Planet.uranus
```

Since not all `rawValues` (ex. `Planet(rawValue: 20)`)can be mapped to a corresponding `enum` case, using this initializer will return an `Optional`.

That’s why `possiblePlanet` is a `Planet?`.
