---
title: Hacking with Swift
description: Hacking with Swift is a platform offering a vast array of tutorials, articles, and resources for Swift and SwiftUI developers. Created by Paul Hudson, it caters to developers at all skill levels with a focus on practical, real-world projects.
---

Hacking with Swift is a platform offering a vast array of tutorials, articles, and resources for Swift and SwiftUI developers. Created by Paul Hudson, it caters to developers at all skill levels with a focus on practical, real-world projects.

<details>

**URL:** https://www.hackingwithswift.com

**Authors:** `Paul Hudson`

**Complexity Levels:**
   - **Beginner:** 35%
   - **Intermediate:** 40%
   - **Advanced:** 25%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Tutorials:** 50% (Step-by-step guides and practical examples)
   - **Articles:** 30% (In-depth articles and best practices)
   - **News:** 10% (Updates on Swift and iOS development)
   - **Interactive Content:** 10% (Quizzes and coding challenges)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Books and Courses:** Extensive collection of books and online courses.
   - **Slack Community:** Active community for discussion and support.

</details>

<LinkCard title="Visit Hacking with Swift" href="https://www.hackingwithswift.com" />

---

## **SwiftUI**

### 🔵 How to Fix Slow List Updates in SwiftUI

This article addresses a common issue in **SwiftUI** where sorting or filtering large datasets in a `List` view can lead to significant **performance delays**. The article explains why these delays occur and presents a simple, one-line solution to mitigate the problem using the **`.id(UUID())` modifier**. Additionally, it delves into the **mechanics of SwiftUI** that cause the issue and discusses the **trade-offs** involved with the fix, such as losing **animations** during list updates.

<details>

**URL:** https://www.hackingwithswift.com/articles/210/how-to-fix-slow-list-updates-in-swiftui

**Published:** November 3rd, 2023

**Authors:** `Paul Hudson`

**Tags:**  
`SwiftUI`, `Performance`, `Optimization`

</details>

#### Key Points
- The problem occurs when a **large list** in **SwiftUI** takes significant time to update after **sorting** or **filtering**.
- The root cause is **SwiftUI's process** of comparing old and new list items to animate changes, which is **computationally expensive** for large datasets.
- The **`.id(UUID())` modifier** effectively resolves this issue by forcing **SwiftUI** to treat the list as a **new one**, thus bypassing the expensive comparison process.

#### Summary of Contents
- **Problem Explanation:** The article begins by demonstrating the problem with a **code example** that causes performance delays in a **SwiftUI `List`** when shuffled.
- **The Fix:** Introduces a **one-line solution** using **`.id(UUID())`** that dramatically **improves performance**.
- **Deep Dive:** The article explains why the fix works, including a discussion of **SwiftUI’s list comparison process**.
- **Trade-offs:** It concludes with a discussion on the **trade-offs**, such as the **loss of animations** when using this fix.

#### Additional Resources
- **SwiftUI Performance Optimization Techniques:** [Further Reading](#)
- **Understanding State and Binding in SwiftUI:** [Further Reading](#)

<LinkCard title="Read Full Article" href="https://www.hackingwithswift.com/articles/210/how-to-fix-slow-list-updates-in-swiftui" />
