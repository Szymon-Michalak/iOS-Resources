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

## SwiftUI

### 🟢 Displaying tips based on parameters and events with TipKit

This article explains how to use the **TipKit framework** in a **SwiftUI app** to **trigger tips** based on specific **parameters** and **user events**. The tutorial provides detailed **code examples** demonstrating how to **configure** and **display tips** after certain **actions** are performed by the user or when specific **conditions** are met.

<details>

**URL:** [Displaying tips based on parameters and events with TipKit](https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit/)

**Published:** Jun 29, 2024

**Authors:** `Tiago Gomes Pereira, Matteo Altobello`

**Tags:**  
`SwiftUI`, `TipKit`, `iOS`, `Event-driven`, `Swift`

</details>

#### Key Points
- Demonstrates how to use the **`@Parameter` property wrapper** to control when **tips** are shown in an app.
- Provides a practical example of using the **`Event` type** to display **tips** after a user accesses a view multiple times.
- Emphasizes the importance of resetting the datastore during testing with **`Tips.resetDatastore()`**.

#### Summary of Contents
- **Introduction:** Overview of **TipKit's role** in enhancing user interaction by displaying **context-specific tips**.
- **Parameter Rules:** Explanation and example of how to use **parameters** to **conditionally show tips**.
- **Event-driven Tips:** Guide on setting up **tips** to appear after certain **events** or **user actions** occur multiple times.
- **Conclusion:** Final thoughts on the benefits of using **TipKit** for **user experience improvement** in **SwiftUI apps**.

#### Additional Resources
- **Using TipKit on a SwiftUI app:** [Link to related tutorial](https://www.createwithswift.com/using-tipkit-on-a-swiftui-app/)
- **TipKit Documentation:** [Link to official documentation](https://developer.apple.com/documentation/tipkit?ref=createwithswift.com)

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/displaying-tips-based-on-parameters-and-events-with-tipkit/" />

## Accessibility

### 🔵 Understanding VoiceOver rotor
This article explores the **VoiceOver rotor**, a **key feature** in **iOS** that enhances **accessibility** for users with **partial or no sight**. It covers the rotor's **default options**, such as **text highlighting** and **navigation styles**, and provides a guide on how developers can create **custom rotor items** in **SwiftUI** using the **`accessibilityRotor` modifier**. This is essential for developers looking to make their applications more **accessible**.

<details>

**URL:** https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them/

**Published:** Jun 27, 2024

**Authors:** `Pasquale Vittoriosi, Matteo Altobello`

**Tags:**  
`Accessibility`, `iOS`, `SwiftUI`, `VoiceOver`

</details>

**Key Points**
- The **VoiceOver rotor** is a **contextual wheel** that allows users to **customize navigation** and **interaction** with content.
- **Default rotor options** include **text highlighting**, **navigating through sections**, and **typing styles**.
- Developers can create **custom rotor items** in **SwiftUI** to tailor the **VoiceOver experience** to their app's needs.

**Summary of Contents**
- **Introduction to VoiceOver rotor:** Explanation of what the **VoiceOver rotor** is and how it functions.
- **Default Rotor Options:** Overview of the **standard rotor options** available in **iOS**, such as "**Headings**," "**Links**," and "**Form controls**."
- **Custom Rotor Creation in SwiftUI:** A guide on how to implement **custom rotor items** in **SwiftUI** using the **`accessibilityRotor` modifier**.

**Additional Resources**
- **[Understanding VoiceOver and How to Use It](https://www.createwithswift.com/understanding-voiceover-and-how-to-use-it/):** Detailed overview of **VoiceOver** and its general usage.
- **[AccessibilityRotorContentBuilder](https://developer.apple.com/documentation/swiftui/accessibilityrotorcontentbuilder?ref=createwithswift.com):** Apple documentation on the **`AccessibilityRotorContentBuilder`** used in creating **custom rotor items**.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/understanding-accessibility-rotors-and-how-to-use-them/" />

### 🟢 Translating Text in Your SwiftUI App with the Translation Framework

Discover how to use the **Translation framework** introduced at **WWDC24** to provide **text translation features** within a **SwiftUI app**. This guide walks you through the **integration process**, using **machine learning models** that run **locally on the device** to offer seamless **translations** without the need for an internet connection.

<details>

**URL:** [Original Blog Post](https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/)

**Published:** August 1, 2024

**Authors:** `Matteo Altobello`

**Tags:**  
`swiftui`, `ios`, `translation`, `machine-learning`, `wwdc24`

</details>

#### Key Points
- Introduced during **WWDC24**, the **Translation API** allows developers to integrate **text translation** directly into their **SwiftUI apps**.
- The **Translation framework** operates entirely **on-device**, ensuring **privacy** and **offline capabilities**.
- The **`translationPresentation` modifier** is used to display a **translation overlay**, enabling easy integration of **translation features**.

#### Summary of Contents
- **Translation API Overview:** Learn about the new **Translation framework**, its benefits, and its implementation within **SwiftUI**.
- **Using the `translationPresentation` Modifier:** Step-by-step guide to attaching the **translation overlay** to a **SwiftUI view**.
- **Text Replacement Feature:** Instructions on how to use the **`replacementAction` parameter** to update **UI elements** with **translated text**.

#### Additional Resources
- **[Translation Framework Documentation](https://developer.apple.com/documentation/translation):** Official documentation for the **Translation framework**.
- **[WWDC24 Session on Translation API](https://developer.apple.com/videos/play/wwdc2024/10084/):** Watch the session to get more insights on the **Translation API**.
- **[SwiftUI Documentation](https://developer.apple.com/documentation/swiftui):** Explore more about **SwiftUI** and its powerful features.

<LinkCard title="Read Full Article" href="https://www.createwithswift.com/translating-text-in-your-swiftui-app-with-the-translation-framework/" />
