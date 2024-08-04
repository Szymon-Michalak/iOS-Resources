---
slug: WhatIsAnAssociatedValue
title: What is an associated value?
authors: [szymon]
tags: [swift]
---

An associated value is the term used to describe the value accompanying acasein a Swift enum. Associated values allow us to present more nuanceddata by adding contextual information to ourcases.

```swift
enum Distance {
    case km(Int)
    case meters(Int)
    case miles(value: Int)
}

Distance.miles(value: 20 )
```

With Swift, names can be specified for associated values in order to make their use more understandable. Additionally, eachcasecan be associatedwith values of any type and number.

```swift
enum Action {
    case tackle
    case random
    case kick(power: Int, speed: Float)
    case jump(height: Int)
    case shootLasers(useBothLasers: Bool)
}
```