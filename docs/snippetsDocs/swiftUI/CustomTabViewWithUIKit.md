---
title: "Custom TabView with Rounded Corners and Shadow in SwiftUI"
description: "A Swift code snippet to customize TabView with rounded corners and shadow in SwiftUI."
tags: `[SwiftUI]`, `[TabView]`, `[iOS Development]`, `[UI Design]`
---

### Snippet Overview

This snippet demonstrates how to customize a `TabView` in SwiftUI by adding rounded corners and shadows without the shadow layer interfering with the content behind it.

**Source**: [SwiftUI tip: Tab bar with rounded corners and shadow](https://medium.com/@cleberwdsantos/swiftui-tip-tab-bar-with-rounded-corners-and-shadow-1c520dda31a)

### Code

```swift
extension UITabBarController {  
    open override func viewWillLayoutSubviews() {  
        super.viewWillLayoutSubviews()  
  
        tabBar.layer.masksToBounds = true  
        tabBar.layer.cornerRadius = 16  
        // Choose which corners should be rounded  
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner] // top left, top right  
  
        // Retrieve shadow view using accessibilityIdentifier if already added  
        if let shadowView = view.subviews.first(where: { $0.accessibilityIdentifier == "TabBarShadow" }) {  
            shadowView.frame = tabBar.frame  
        } else {  
            let shadowView = UIView(frame: .zero)  
            shadowView.frame = tabBar.frame  
            shadowView.accessibilityIdentifier = "TabBarShadow"  
            shadowView.backgroundColor = UIColor.white  
            shadowView.layer.cornerRadius = tabBar.layer.cornerRadius  
            shadowView.layer.maskedCorners = tabBar.layer.maskedCorners  
            shadowView.layer.masksToBounds = false  
            shadowView.layer.shadowColor = UIColor.black.cgColor  
            shadowView.layer.shadowOffset = CGSize(width: 0.0, height: -8.0)  
            shadowView.layer.shadowOpacity = 0.3  
            shadowView.layer.shadowRadius = 10  
            view.addSubview(shadowView)  
            view.bringSubviewToFront(tabBar)  
        }  
    }  
}
```

---

### Usage

- Import this extension into your SwiftUI project to customize the `TabView` appearance.
- The `TabView` will now have rounded corners on the top left and right, along with a shadow that does not obscure the content behind it.

---

### Notes

- Ensure you set the `accessibilityIdentifier` correctly for reusability.
- Adjust `shadowOpacity` and `shadowRadius` for different shadow effects.
- Test thoroughly on different iOS versions to ensure compatibility.
