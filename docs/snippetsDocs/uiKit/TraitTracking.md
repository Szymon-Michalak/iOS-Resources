---
title: "Automatic Trait Tracking in iOS 18"
description: "Explore how UIKit automatically tracks trait accesses and invalidates views in iOS 18, simplifying layout updates for developers."
tags: [iOS, UIKit, TraitTracking, AutomaticUpdates, iOS18]
---

### Overview

With **iOS 18**, UIKit introduces **automatic trait tracking**, eliminating the need for manual trait change notifications. This enhancement automatically invalidates views, calling methods like `setNeedsLayout`, `setNeedsUpdateConstraints`, or `setNeedsDisplay` based on trait changes, streamlining updates for traits accessed within supported methods.

Supported methods include:
- `UIView`: `layoutSubviews()`, `updateConstraints()`, `draw(CGRect)`
- `UIViewController`: `viewWillLayoutSubviews()`, `updateViewConstraints()`, `updateConfiguration`

**Blog Post**: [Source](https://useyourloaf.com/blog/registering-for-trait-changes/)
---

### Code Example

#### Automatic Trait Tracking Example

The following example demonstrates automatic trait tracking in a custom `UIView`:

```swift
final class SquareView: UIView {
    override func draw(_ rect: CGRect) {
        var scale = 0.3
        if traitCollection.preferredContentSizeCategory.isAccessibilityCategory {
            scale = 0.6
        }
        
        let width = bounds.width * scale
        let height = bounds.height * scale
        let startX = (bounds.width / 2) - (width / 2)
        let startY = (bounds.height / 2) - (height / 2)
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: startX, y: startY))
        path.addLine(to: CGPoint(x: startX, y: startY + height))
        path.addLine(to: CGPoint(x: startX + width, y: startY + height))
        path.addLine(to: CGPoint(x: startX + width, y: startY))
        path.addLine(to: CGPoint(x: startX, y: startY))
        
        UIColor.blue.setStroke()
        UIColor.blue.setFill()
        path.stroke()
        path.fill()
    }
}
```

UIKit automatically invalidates the view (`setNeedsDisplay`) when the `preferredContentSizeCategory` changes, without manual registrations or notifications.

---

#### Pre-iOS 18 Manual Trait Tracking

Before iOS 18, developers needed to manually register for trait changes and trigger updates:

```swift
override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
}

required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupView()
}

private func setupView() {
    registerForTraitChanges([UITraitPreferredContentSizeCategory.self], action: #selector(contentSizeChanged))
}

@objc private func contentSizeChanged() {
    setNeedsDisplay()
}
```

---

### Benefits of Automatic Trait Tracking

- **Reduced Boilerplate Code**: No need for manual registrations or callbacks.
- **Improved Reliability**: Automatically updates based on trait changes, ensuring consistent UI behavior.
- **Streamlined Workflow**: Focus on core functionality without handling notifications.

---

### Learn More

- **WWDC24**: [What’s New in UIKit](https://developer.apple.com/videos/play/wwdc2024/10118?time=362)
- **Apple Documentation**: [Automatic Trait Tracking](https://developer.apple.com/documentation/uikit/app_and_environment/automatic_trait_tracking)
- **Blog Post**: [Registering for Trait Changes](https://useyourloaf.com/blog/registering-for-trait-changes/)
