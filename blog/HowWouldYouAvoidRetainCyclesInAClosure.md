---
slug: HowWouldYouAvoidRetainCyclesInAClosure
title: How would you avoid retain cycles in a closure?
authors: [ace-the-ios-interview]
tags: [memory]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

**This will build off our understanding of ARC from the previous questions.**

Often times, closures will introduce retain cycles. Since a closure is a reference type it maintains a `strong` reference to all of the objects referenced in the body of the closure thereby increasing their retain count.

To manage this, we can use a capture list. This allows us to explicitly specify which objects we want to maintain a reference to, but more importantly whether we want those references to be `weak`, `strong`, or `unowned`.

We can pick `weak` or `unowned`(where applicable) to ensure that we can still reference all of the objects the closure needs, but we don’t inadvertently increase their retain count and introduce a retain cycle.

The following example has a retain cycle as the body of the closure creates a `strong` reference to `isUserActive` and `isUserOnlineView`.

```swift
class RetainCycleDemo {
    @IBOutlet var isUserOnlineView: UIView!

    var isUserActive = false

    func setUserActivityStatusView() {
        userService.checkUserOnlineStatus { isOnline in
            self.isUserActive = isOnline

            if isOnline {
                self.isUserOnlineView.backgroundColor = .green
            } else {
            self.isUserOnlineView.backgroundColor = .red
            }
        }
    }
}
```

Fortunately, we can fix this by simply using a `weak` reference to `self` instead. And, voila - no more retain cycles!

```swift
class RetainCycleDemo {
    @IBOutlet var isUserOnlineView: UIView!
    var isUserActive = false

    func setUserActivityStatusView() {
        userService.checkUserOnlineStatus { [weak self] isOnline in
            self?.isUserActive = isOnline
            if isOnline {
                self?.isUserOnlineView.backgroundColor = .green
            } else {
                self?.isUserOnlineView.backgroundColor = .red
            }
        }
    }
}

```
