---
title: SkeletonView
description: SkeletonView is a Swift framework designed to simplify the creation of skeleton screens in iOS apps.
---

SkeletonView is a Swift framework designed to simplify the creation of skeleton screens in iOS apps. It enables developers to display animated placeholders while content is loading, enhancing the user experience by providing visual feedback during data fetching.

<details>
**URL:** [https://github.com/Juanpe/SkeletonView](https://github.com/Juanpe/SkeletonView)  
**Created:** 2017  
**Last Updated:** 2024  
**Authors:** `Juanpe Catalán`  
**Tags:** `iOS`, `Swift`, `Skeleton Screens`, `Loading Animation`
</details>

#### Key Features
- **Skeleton Animations:** Easily add shimmering effects to UI components for indicating loading states.
- **Customizable Skeletons:** Allows customization of skeleton colors, gradients, and animations.
- **TableView & CollectionView Support:** Automatically manages skeleton loading for UITableView and UICollectionView.
- **Multiline Text Simulation:** Provides multiline text placeholders to simulate loading content.
- **Interface Builder Integration:** Configure skeleton views directly in Interface Builder for seamless development.

#### Integration
- **Installation:**
  - **CocoaPods:** Add `pod 'SkeletonView'` to your Podfile.
  - **Carthage:** Add `github "Juanpe/SkeletonView"` to your Cartfile.
  - **Swift Package Manager:** Add the repository URL via Xcode's Swift Package Manager.
- **Configuration:** Enable skeletons by setting the `isSkeletonable` property to `true` on any view. Use `showSkeleton()` to start the skeleton animation.
- **Basic Usage:** 

```swift
// Enabling a skeleton view
yourView.isSkeletonable = true
yourView.showSkeleton()

// Stopping the skeleton view
yourView.hideSkeleton()
```

#### Use Cases
- **Loading Data:** Display skeleton screens while fetching data from a network or database.
- **User Onboarding:** Provide a visual indication that content is being loaded, improving the initial user experience.
- **Content Placeholders:** Use skeleton screens to replace content temporarily when loading times are long or unpredictable.

#### Notes
- **Performance:** SkeletonView is optimized for smooth animations, ensuring that it doesn’t impact app performance significantly even on older devices.
- **Customizability:** You can adjust the appearance of the skeleton views to match your app’s design, including the ability to create gradient skeletons or adjust animation speed.

#### Documentation and Resources
- **Official Documentation:** [SkeletonView Documentation](https://github.com/Juanpe/SkeletonView#readme)
- **Tutorials:** [SkeletonView Setup Guide](https://github.com/Juanpe/SkeletonView#tutorials)
- **Community Support:** [GitHub Issues](https://github.com/Juanpe/SkeletonView/issues)

<LinkCard title="Visit SkeletonView" href="https://github.com/Juanpe/SkeletonView" />
