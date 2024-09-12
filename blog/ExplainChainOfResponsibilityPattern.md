---
slug: ExplainChainOfResponsibilityPattern
title: Explain the Chain of Responsibility Pattern in iOS
authors: [szymon]
tags: [design_patterns]
---

<details>  
  <summary>**Sources & Resources**</summary>  

  **Main Source**: Ray Wenderlich - Design Patterns by Tutorials (2019)  
  **Further Reading**:  
  - [Chain of Responsibility Pattern in iOS by Apple](https://developer.apple.com)  
</details>

:::info[TL/DR]  
The **Chain of Responsibility Pattern** allows multiple objects to handle a request, passing it along a chain until one of the objects handles it. It is useful for processing events where different handlers act based on specific criteria.
:::

### Concept Overview

The **Chain of Responsibility Pattern** is a behavioral design pattern that decouples the sender of a request from its receiver. Multiple handlers are linked, and each handler decides either to process the request or pass it to the next handler in the chain.

Key components:
1. **Client**: Sends the request.
2. **Handler Protocol**: Defines the required interface for all handlers.
3. **Concrete Handlers**: Each handler processes the request or forwards it to the next handler.

### Playground Example

Below is an example based on a **coin validation system**:

```swift
import Foundation

// MARK: - Handler Protocol
protocol CoinHandlerProtocol {
    var next: CoinHandlerProtocol? { get set }
    func handleCoinValidation(_ coin: Coin) -> Coin?
}

// MARK: - Coin Model
public class Coin {
    public let diameter: Double
    public let weight: Double

    public init(diameter: Double, weight: Double) {
        self.diameter = diameter
        self.weight = weight
    }
}

// Concrete Coin Types
public class Penny: Coin {
    public static let standardDiameter = 19.05
    public static let standardWeight = 2.5
}

public class Quarter: Coin {
    public static let standardDiameter = 24.26
    public static let standardWeight = 5.67
}

// MARK: - Concrete Handler
public class CoinHandler: CoinHandlerProtocol {
    public var next: CoinHandlerProtocol?
    private let coinType: Coin.Type
    private let diameterRange: ClosedRange<Double>
    private let weightRange: ClosedRange<Double>

    public init(coinType: Coin.Type, diameterVariation: Double = 0.05, weightVariation: Double = 0.05) {
        self.coinType = coinType
        let standardDiameter = coinType.standardDiameter
        self.diameterRange = (1 - diameterVariation) * standardDiameter ... (1 + diameterVariation) * standardDiameter
        let standardWeight = coinType.standardWeight
        self.weightRange = (1 - weightVariation) * standardWeight ... (1 + weightVariation) * standardWeight
    }

    public func handleCoinValidation(_ coin: Coin) -> Coin? {
        if diameterRange.contains(coin.diameter) && weightRange.contains(coin.weight) {
            return coin
        }
        return next?.handleCoinValidation(coin)
    }
}

// Example Usage
let pennyHandler = CoinHandler(coinType: Penny.self)
let quarterHandler = CoinHandler(coinType: Quarter.self)
pennyHandler.next = quarterHandler

let unknownCoin = Coin(diameter: 24.26, weight: 5.67)
if let validatedCoin = pennyHandler.handleCoinValidation(unknownCoin) {
    print("Coin validated: \(type(of: validatedCoin))")
} else {
    print("Coin not recognized")
}
```

### How It Works:
- **Client**: Sends the `unknownCoin` to the first handler (`pennyHandler`).
- **Handlers**: Each `CoinHandler` validates the coin. If it cannot handle the request, it passes the request to the next handler in the chain.

### When to Use

- **Event handling**: When multiple objects might handle a request, and the specific handler is not known in advance.
- **Decoupling**: When you want to decouple senders from receivers and chain multiple handlers together.

### When to Be Careful

- **Long chains**: A long chain of handlers can impact performance and make debugging more complex.

---

:::tip[In Bullets]
- The **Chain of Responsibility Pattern** allows requests to be passed along a chain of handlers until one processes it.
- It involves a **client**, **handler protocol**, and **concrete handlers**.
- Useful for event handling and decoupling sender and receiver logic.
:::
