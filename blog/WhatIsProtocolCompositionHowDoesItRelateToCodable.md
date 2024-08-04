---
slug: WhatIsProtocolCompositionHowDoesItRelateToCodable
title: What is protocol composition? How does it relate to Codable?
authors: [szymon]
tags: [swift]
---


The `Codable` protocol is a prime example of Swift’sprotocol composition feature which allows you to easily combine existing protocols together using the `&` operator.

For example, the `Codable` protocol is actually thecombination of the `Encodable` and `Decodable` protocols.

```swift
typealias Codable = Decodable & Encodable
```
`Decodable` allows a type to decode itself from an external representation and `Encodable` allows a type to encode itself as an external representation.

When combined together like this, the `Codable` protocol ensures that whatever object implements this protocol can both convert and be converted from some externalrepresentation.

In practice, this typically means converting a JSON response to a domain model object and vice-versa.