---
title: Create with Swift
description: Create with Swift is a platform designed for Swift and SwiftUI developers, offering a variety of tutorials, articles, and guides. The site is known for its emphasis on advanced topics and practical applications, making it a valuable resource for developers aiming to enhance their skills and stay updated with the latest trends in iOS development.
---

Create with Swift is a platform designed for Swift and SwiftUI developers, offering a variety of tutorials, articles, and guides. The site is known for its emphasis on advanced topics and practical applications, making it a valuable resource for developers aiming to enhance their skills and stay updated with the latest trends in iOS development.

<details>

**URL:** https://www.createwithswift.com

**Authors:** `Create with Swift Team`

**Complexity Levels:**
   - **Beginner:** 40%
   - **Intermediate:** 35%
   - **Advanced:** 25%

**Frequency of Posting:**  2-3 times a week

**Types of Content:**
   - **Tutorials:** 60% (Step-by-step guides and practical examples)
   - **Articles:** 30% (In-depth articles and best practices)
   - **News:** 5% (Updates on Swift and iOS development)
   - **Interviews:** 5% (Insights from industry professionals)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **E-Books/Guides:** Downloadable e-books and guides for in-depth learning.
   - **Certifications:** Available for completed courses and tutorials, offering a credential for developers.

</details>

<LinkCard title="Visit Create with Swift" href="https://www.createwithswift.com" />

---

## UI

### Displaying tips based on parameters and events with TipKit

This tutorial explores using the TipKit framework in SwiftUI to display contextual tips based on specific parameters and events within an application. It demonstrates how to configure and present tips using @Parameter property wrappers and Event types.

<details>

**URL:** https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit  
**Published:** Jun 29, 2024  

**Authors:**
`Tiago Gomes Pereira`, `Matteo Altobello`  
**Tags:**
`SwiftUI`, `TipKit`, `iOS Development`, `Parameter Rules`, `Event Rules`

</details>

#### Key Points

- Introduces TipKit framework for SwiftUI apps.
- Shows how to define and trigger tips based on parameter values using @Parameter property.
- Demonstrates setting up tips based on event occurrences using Event type.
- Provides practical examples and code snippets for implementing both parameter and event-based tip rules.
- Emphasizes the importance of using Tips.configure() and Tips.resetDatastore() methods for tip management.

#### Summary of Contents

- **Introduction:** Overview of TipKit framework and its role in enhancing user experience through contextual tips.
- **Showing the tips using parameter rules:** Discusses using @Parameter property wrapper to control tip presentation based on specific conditions.
- **Showing the tips based on events:** Explains using Event type to trigger tips after specific actions or view visits.
- **Technical Details:** Covers usage of Rule macros and TipView component in SwiftUI.
- **Applications and Examples:** Provides code examples illustrating implementation of parameter and event rules in SwiftUI views.
- **Conclusion:** Highlights benefits of using TipKit for improving app usability and user engagement.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit" />

## Accessibility

### Understanding VoiceOver Rotor

This article explores the VoiceOver rotor, a crucial accessibility feature in iOS apps. It details how the rotor enhances navigation for users with visual impairments by allowing customizable commands like text highlighting, organizational navigation, and typing methods.

<details>

**URL:** https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them  
**Published:** Jun 27, 2024  

**Authors:**
 - Pasquale Vittoriosi
 - Matteo Altobello

**Tags:**
`Accessibility`, `VoiceOver`, `iOS Development`, `SwiftUI`

</details>

#### Key Points

- Explanation of the VoiceOver rotor and its functionality.
- Customization options available in the VoiceOver rotor settings.
- Practical applications of the rotor in enhancing user navigation and interaction.
- Guide on creating custom VoiceOver rotor items using SwiftUI.

#### Summary of Contents

- **Introduction:** Overview of VoiceOver and its impact on accessibility.
- **VoiceOver Rotor:** Detailed explanation of how the rotor works and its customizable features.
- **Rotor Options:** Discussion on default and customizable rotor options.
- **Creating Custom Rotors:** Guide on implementing custom rotor items in SwiftUI.
- **Conclusion:** Recap on the benefits of using VoiceOver rotor for app accessibility.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them/" />

### Translating Text in Your SwiftUI App with the Translation Framework

This article explains how to use the Translation framework to integrate text translation features into a SwiftUI app. Introduced at WWDC24, this framework allows developers to use machine learning models for on-device translation, enhancing user experience without requiring an internet connection.

<details>
**URL:** https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/

**Published:** August 1, 2024

**Authors:** Matteo Altobello

**Tags:**  
`SwiftUI`, `Translation`, `WWDC24`, `iOS`, `Machine Learning`
</details>

#### Key Points
- The Translation API, introduced at WWDC24, allows on-device text translation without needing an internet connection.
- The `translationPresentation(isPresented:text:attachmentAnchor:arrowEdge:replacementAction:)` modifier enables adding a translation overlay to SwiftUI views.
- The overlay can either show the translated text or replace the original text with the translation.
- Testing the translation feature requires running the app on a physical device, as the Simulator and Preview do not support translation tasks.
- On iPadOS and macOS, the translation overlay appears as a popover, which can be customized using the `arrowEdge` parameter.

#### Summary of Contents
- **Introduction:** Overview of the Translation API's capabilities and significance.
- **Translation Presentation:** Detailed instructions on using the `translationPresentation` modifier in SwiftUI.
- **Replace Text in the View:** How to replace the original text with the translated text using the `replacementAction` parameter.
- **Platform-Specific Considerations:** Differences in presentation for iPadOS and macOS, including popover customization.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/" />
