---
title: ♿🌈 Accessibility
description: Explore the full spectrum of iOS accessibility, starting from beginner-friendly basics and progressing to advanced and professional-level topics. This structured deep dive is designed to empower developers to create truly inclusive applications.
---

Explore the full spectrum of iOS accessibility, starting from beginner-friendly basics and progressing to advanced and professional-level topics. This structured deep dive is designed to empower developers to create truly inclusive applications.

## **Beginner**
**Objective:** Understand the basics of accessibility and learn how to implement it in standard applications.

### Introduction to Accessibility  
- What is Accessibility?  
  - Importance, definitions, and legal context (ADA, WCAG).  
- Apple’s Accessibility Ecosystem.  

### Accessibility API Basics  
- Key APIs: `UIAccessibility`, `accessibilityLabel`, `accessibilityHint`, etc.  
- Accessibility Inspector in Xcode.  

### Making Standard UI Components Accessible  
- Ensuring buttons, sliders, and text fields are accessible.  
- Setting up basic accessibility identifiers for UI testing.  

### VoiceOver Basics  
- How VoiceOver works.  
- Adding labels, hints, and adjusting the reading order.

---

## **Intermediate**
**Objective:** Implement accessibility for more complex interfaces and use cases.

### Supporting Dynamic Type  
- Enabling scalable text with Dynamic Type.  
- Adapting layouts for large fonts using Auto Layout.  

### Visual Accessibility Improvements  
- Ensuring WCAG-compliant color contrast.  
- Accessible image descriptions and alt text.  

### Advanced VoiceOver Features  
- Implementing custom rotors with `UIAccessibilityCustomRotor`.  
- Announcements for dynamic content updates.

### Accessibility Testing Tools  
- Debugging with Accessibility Inspector.  
- Using VoiceOver and Switch Control for manual testing.  
- Writing automated accessibility tests in Xcode.

---

## **Advanced**
**Objective:** Tackle advanced challenges in accessibility and implement custom solutions.

### Gesture and Interaction Accessibility  
- Making custom gestures VoiceOver-friendly.  
- Providing alternatives for multi-touch interactions.  

### Reduced Motion and Haptics  
- Adapting apps for `isReduceMotionEnabled`.  
- Designing accessible haptic feedback.  

### Accessibility for External Devices  
- Supporting keyboards with `UIKeyCommand`.  
- Integrating Braille displays and assistive hardware.  

### Accessibility in Game Development  
- Simplifying controls for motor impairments.  
- Adding subtitles, audio descriptions, and adjustable difficulty.

---

## **Advanced Pro**
**Objective:** Master accessibility at scale and integrate innovative technologies for accessibility.

### Performance Optimization for Accessibility  
- Streamlining complex accessibility hierarchies.  
- Profiling and debugging with Instruments.  

### Machine Learning for Accessibility  
- Using Core ML to create descriptive alt text and audio cues.  
- Personalizing accessibility experiences with predictive models.  

### Enterprise Accessibility Strategies  
- Creating documentation and accessibility-first workflows.  
- Continuous accessibility testing in CI/CD pipelines.  

### Accessibility Beyond the App  
- Extending accessibility to hybrid apps and web content.  
- Exploring accessibility features on Apple Watch and other devices.

--- 

#### 🔵 Understanding VoiceOver rotor
This article explores the **VoiceOver rotor**, a **key feature** in **iOS** that enhances **accessibility** for users with **partial or no sight**. It covers the rotor's **default options**, such as **text highlighting** and **navigation styles**, and provides a guide on how developers can create **custom rotor items** in **SwiftUI** using the **`accessibilityRotor` modifier**. This is essential for developers looking to make their applications more **accessible**.

<details>

**URL:** https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them/

**Published:** Jun 27, 2024

**Authors:** `Pasquale Vittoriosi, Matteo Altobello`

**Tags:**  
`Accessibility`, `iOS`, `SwiftUI`, `VoiceOver`

</details>

##### Key Points
- The **VoiceOver rotor** is a **contextual wheel** that allows users to **customize navigation** and **interaction** with content.
- **Default rotor options** include **text highlighting**, **navigating through sections**, and **typing styles**.
- Developers can create **custom rotor items** in **SwiftUI** to tailor the **VoiceOver experience** to their app's needs.

##### Summary of Contents
- **Introduction to VoiceOver rotor:** Explanation of what the **VoiceOver rotor** is and how it functions.
- **Default Rotor Options:** Overview of the **standard rotor options** available in **iOS**, such as "**Headings**," "**Links**," and "**Form controls**."
- **Custom Rotor Creation in SwiftUI:** A guide on how to implement **custom rotor items** in **SwiftUI** using the **`accessibilityRotor` modifier**.

##### Additional Resources
- **[Understanding VoiceOver and How to Use It](https://www.createwithswift.com/understanding-voiceover-and-how-to-use-it/):** Detailed overview of **VoiceOver** and its general usage.
- **[AccessibilityRotorContentBuilder](https://developer.apple.com/documentation/swiftui/accessibilityrotorcontentbuilder?ref=createwithswift.com):** Apple documentation on the **`AccessibilityRotorContentBuilder`** used in creating **custom rotor items**.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them/" />

#### 🟢 Translating Text in Your SwiftUI App with the Translation Framework

Discover how to use the **Translation framework** introduced at **WWDC24** to provide **text translation features** within a **SwiftUI app**. This guide walks you through the **integration process**, using **machine learning models** that run **locally on the device** to offer seamless **translations** without the need for an internet connection.

<details>

**URL:** https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/

**Published:** August 1, 2024

**Authors:** `Matteo Altobello`

**Tags:**  
`swiftui`, `ios`, `translation`, `machine-learning`, `wwdc24`

</details>

##### Key Points
- Introduced during **WWDC24**, the **Translation API** allows developers to integrate **text translation** directly into their **SwiftUI apps**.
- The **Translation framework** operates entirely **on-device**, ensuring **privacy** and **offline capabilities**.
- The **`translationPresentation` modifier** is used to display a **translation overlay**, enabling easy integration of **translation features**.

##### Summary of Contents
- **Translation API Overview:** Learn about the new **Translation framework**, its benefits, and its implementation within **SwiftUI**.
- **Using the `translationPresentation` Modifier:** Step-by-step guide to attaching the **translation overlay** to a **SwiftUI view**.
- **Text Replacement Feature:** Instructions on how to use the **`replacementAction` parameter** to update **UI elements** with **translated text**.

##### Additional Resources
- **[Translation Framework Documentation](https://developer.apple.com/documentation/translation):** Official documentation for the **Translation framework**.
- **[WWDC24 Session on Translation API](https://developer.apple.com/videos/play/wwdc2024/10084/):** Watch the session to get more insights on the **Translation API**.
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui):** Explore more about **SwiftUI** and its powerful features.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/" />
