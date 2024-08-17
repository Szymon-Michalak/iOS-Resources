---
title: Holy Swift
description: Holy Swift is a platform offering a variety of tutorials, articles, and guides focused on Swift and iOS development. The site covers topics ranging from basic algorithms to advanced SwiftUI and UIKit techniques, cryptography, and interview preparation. It's designed to help developers of all levels enhance their skills and stay updated with industry trends.
---

Holy Swift is a platform offering a variety of tutorials, articles, and guides focused on Swift and iOS development. The site covers topics ranging from basic algorithms to advanced SwiftUI and UIKit techniques, cryptography, and interview preparation. It's designed to help developers of all levels enhance their skills and stay updated with industry trends.

<details>
**URL:** https://holyswift.app/

**Authors:** `Holy Swift Team`

**Complexity Levels:**
   - **Beginner:** 30%
   - **Intermediate:** 40%
   - **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Tutorials:** 50% (Step-by-step guides and practical examples)
   - **Articles:** 40% (In-depth articles and best practices)
   - **News:** 10% (Updates on Swift and iOS development)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Collections:** Curated collections of articles on specific topics.
   - **Discord Community:** A place for discussion and support.
</details>

<LinkCard title="Visit Holy Swift" href="https://holyswift.app/" />

---

## **Best Practices**

### 🔵 Common Mistakes to Avoid When Using Enums in Swift

This article explores **common mistakes developers make when using enums in Swift**, such as **poor cohesion** when mapping values, **lazy switch statements**, and **assumptions** about **automatic raw value incrementation**. It also provides **best practices** to improve **code reliability** and **maintainability** in **iOS development**.

<details>

**URL:** https://holyswift.app/common-mistakes-to-avoid-when-using-enums-in-swift/

**Published:** August 17th, 2024

**Authors:** `Leo Pugliese`

**Tags:**  
`Swift`, `Enums`, `iOS`, `Best Practices`

</details>

#### Key Points
- **Lack of Cohesion:** Avoid **mapping network statuses** directly to **view statuses** without clear logic, which can lead to **maintainability issues**.
- **Lazy Switch Cases:** Be cautious when using the **default clause** in **switch statements**; it can hide **unhandled cases** and lead to **unexpected behavior**.
- **Assuming Raw Value Incrementation:** Never rely on **Swift's automatic raw value assignment** for **enums**, as it can lead to **fragile code**.

#### Summary of Contents
- **Lack of Cohesion When Mapping Values:** Discusses the problem of **mapping network statuses** to **view statuses** without considering future changes and how to **refactor** the code to maintain **cohesion**.
- **Lazy Switch or Using Default Clause:** Explains the pitfalls of using **default clauses** in **switch statements** and recommends explicitly handling each **enum case**.
- **Assuming Automatic Raw Value Incrementation:** Warns against relying on **Swift's automatic raw value incrementation** for **enums**, advising developers to use **explicit values** to avoid **bugs**.

#### Additional Resources
- **Swift Enums Documentation:** [Apple Developer Documentation](https://developer.apple.com/documentation/swift/enum)
- **Swift: The Power of Enums:** [Related Article](https://holyswift.app/the-power-of-enums-in-swift)

<LinkCard title="Read Full Article" href="https://holyswift.app/common-mistakes-to-avoid-when-using-enums-in-swift/" />
