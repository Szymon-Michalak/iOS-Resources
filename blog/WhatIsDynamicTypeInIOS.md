---
slug: WhatIsDynamicTypeInIOS
title: What is Dynamic Type in iOS?
authors: [szymon]
tags: [uikit]
---

Introduced in iOS 10, Dynamic Type allows developers to automatically scale their application's font size up or down to accommodate users with accessibility issues or users that need increased visibility. It can also accommodate those who can read smaller text allowing more information to appear on the screen.

Developers can choose to support Dynamic Text on a view-by-view basis. If you choose to add support for Dynamic Text, you can usetraitCollection.preferredContentSizeCategory to retrieve the user's preferred content size and modify your UI styling accordingly.

You could also implementtraitCollectionDidChange()which will notify you when the user’s preferred content size setting changes. Then, you can make whatever additional UI changes you need to make based off of the new value in traitCollection.preferredContentSizeCategory:
```swift
override func traitCollectionDidChange(
_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)
    // Use this property to update your application's text styling
    traitCollection.preferredContentSizeCategory
}
```

If you override this function, make sure you always call
`super.traitCollectionDidChange(previousTraitCollection)`first.
