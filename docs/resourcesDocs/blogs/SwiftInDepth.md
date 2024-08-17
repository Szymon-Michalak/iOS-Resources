---
title: Swift in Depth
description: Swift in Depth is a platform dedicated to advancing Swift and mobile engineering skills through in-depth articles, books, and videos. It focuses on writing robust, maintainable, and adaptable code suited for real-world projects. The site provides resources on system design, Swift best practices, and practical coding techniques.
---


Swift in Depth is a platform dedicated to advancing Swift and mobile engineering skills through in-depth articles, books, and videos. It focuses on writing robust, maintainable, and adaptable code suited for real-world projects. The site provides resources on system design, Swift best practices, and practical coding techniques.

<details>
**URL:** https://swiftindepth.com

**Authors:** `Tjeerd in 't Veen`

**Complexity Levels:**
   - **Beginner:** 20%
   - **Intermediate:** 50%
   - **Advanced:** 30%

**Frequency of Posting:** Weekly

**Types of Content:**
   - **Articles:** 40% (In-depth articles and best practices)
   - **Books:** 30% (Comprehensive guides on Swift and mobile development)
   - **Videos:** 30% (Tutorials and discussions)

**Additional Features:**
   - **Newsletter:** Available for regular updates and news.
   - **Books:** Detailed guides available in various formats.
   - **Videos:** High-quality video tutorials and discussions.
</details>

<LinkCard title="Visit Swift in Depth" href="https://swiftindepth.com" />

---

## **Best Practices**

### 🔵 Receiving UI Designs as a Developer

This article provides **strategies for developers** when **receiving UI designs**. It highlights the importance of **critical thinking**, **communication**, and **proactive problem-solving** with designers. The tips include dealing with **best-case scenarios**, **prioritizing features**, **verifying existing components**, **stress-testing designs**, and **discussing time investments**.

<details>

**URL:** [https://swiftindepth.com/articles/receiving-designs/](https://swiftindepth.com/articles/receiving-designs/)

**Published:** [Date of publication]

**Authors:** `Tjeerd in 't Veen`

**Tags:**  
`UI Design`, `Software Development`, `iOS`, `Swift`

</details>

#### Key Points
- **Handling Best-Case Scenarios:** Real-life data may not match the **perfect content** in designs. Always ask for **worst-case scenario designs** to ensure the **UI holds up** under **real-world conditions**.
- **Prioritization:** Not all design elements have **equal importance**. Work with the designer to identify which features can be **deprioritized** to **speed up delivery**.
- **Component Verification:** Before building new components, check if something similar **already exists** in the codebase to avoid **redundancy** and **save time**.
- **Stress Testing Designs:** Consider **edge cases** and ask questions that might reveal **potential issues** in the design, such as **handling empty states** or **large text**.
- **Time Investment Discussions:** Quantify the **time required** for complex design elements and discuss their worth with the team, shifting the conversation from **binary decisions** to **strategic prioritization**.

#### Summary of Contents
- **Designs often encompass best-case scenarios:** Discusses the reality of handling **imperfect data** and the importance of validating designs against **worst-case scenarios**.
- **Not everything has equal priority:** Emphasizes the need to **reassess priorities** with the designer to avoid unnecessary work and **speed up delivery**.
- **Verify the existence of current components:** Suggests **verifying existing components** to avoid duplication and save **development time**.
- **Try to break the design:** Recommends asking tough questions to uncover **potential issues** early on in the design process.
- **Talk about time investments:** Encourages developers to discuss the **time required** for specific design elements with the team, focusing on **strategic decision-making**.

#### Additional Resources
- **Mobile System Design Book:** A resource for **mobile engineers** covering topics like **large app architectures** and **delivering reusable components**.
- **Swift in Depth Articles:** More articles on **Swift** and **iOS development** by the author.

<LinkCard title="Read Full Article" href="https://swiftindepth.com/articles/receiving-designs/" />


### 🔵 Uh oh, you picked the wrong UI architecture

This article explores the transient nature of **UI architectures** in **mobile development**, such as **RxSwift** and **SwiftUI**, highlighting the importance of **simplicity** and **alignment within teams**. The author discusses how **trends** can influence **decision-making** but cautions against overhauling codebases based solely on what's popular. Instead, the article advocates for **controlled experimentation** and sticking to **solutions that work well** for the team.

<details>

**URL:** [https://swiftindepth.com/articles/ui-architectures/](https://swiftindepth.com/articles/ui-architectures/)

**Published:** [Date of publication]

**Authors:** `Tjeerd in 't Veen`

**Tags:**  
`UI Architecture`, `Mobile Development`, `Swift`, `RxSwift`, `SwiftUI`

</details>

#### Key Points
- **UI architectures** are similar to **fashion trends**—constantly changing and often based on **personal preferences**.
- Developers should focus on **solving actual problems** rather than following **trends** for the sake of it.
- **Simple solutions** often suffice, and adopting a **new architecture** should be considered only when necessary.
- **Controlled experimentation** with **new technologies** or **architectures** can provide valuable insights without overhauling the entire codebase.
- **Trends** in **UI architectures** will continue to evolve, so it's important to stay **adaptable**.

#### Summary of Contents
- **Introduction:** The nature of **UI architectures** and their **trend-driven evolution**.
- **Alignment tools:** The role of **personal preferences** in choosing **UI architectures** and the importance of **alignment within teams**.
- **Choose the simplest solution possible:** Advice on prioritizing **simplicity** over following **trends**.
- **What problem are you really solving?:** Encourages a focus on **actual problems** rather than perceived issues with **architecture**.
- **Making space for experimentation:** Advocates for **controlled experiments** to explore **new architectures**.
- **Trends leave again:** Observations on the **transient nature** of trends like **RxSwift** and **SwiftUI**.

#### Additional Resources
- **[Coordinators in iOS](https://khanlou.com/2015/01/the-coordinator/):** Article on the **Coordinator pattern**.
- **[Mobile System Design](https://www.mobilesystemdesign.com):** The author's book covering **UI patterns** and **Dependency Injection**.

<LinkCard title="Read Full Article" href="https://swiftindepth.com/articles/ui-architectures/" />

## **Testing**

### 🔵 Testing Challenges in a Mobile Environment

This article provides insights into the unique **challenges** faced when **testing** in **mobile environments**. It emphasizes the importance of **early and thorough testing** to prevent issues before code is merged. The article also highlights the difficulties of **rollbacks**, the necessity of testing **build-to-build updates**, and the limitations of relying solely on **manual testing**.

<details>

**URL:** https://swiftindepth.com/articles/mobile_testing_challenges/

**Published:** [Date not provided]

**Authors:** `Tjeerd in 't Veen`

**Tags:**  
`mobile-testing`, `unit-testing`, `iOS`, `damage-prevention`

</details>

#### Key Points
- **No Quick Rollbacks:** Unlike **web** or **backend systems**, **mobile environments** do not allow for **quick rollbacks**, making **damage control** difficult.
- **Damage Prevention by Testing Early:** Implementing comprehensive **system** or **component testing** before merging code can prevent major issues.
- **Test Build-to-Build Updates:** It is crucial to test how an app handles updates from previous versions to avoid **migration issues**.
- **Limitations of Manual Testing:** **Manual testing** alone is insufficient due to the multitude of **device** and **environment combinations** that need to be considered.
- **Finding Fun in Writing Tests:** Embracing **testing** as a **creative** and **helpful process** can improve the **testing experience** and outcomes.

#### Summary of Contents
- **No Quick Rollbacks:** Discusses the challenges of **rolling back** in **mobile environments** and the importance of strong **release processes**.
- **Damage Prevention by Testing Early:** Encourages testing **systems** as a whole before merging to avoid post-release issues.
- **Test Build-to-Build Updates:** Stresses the importance of checking app behavior during **build updates**, especially for **database migrations**.
- **Limitations of Manual Testing:** Highlights the **combinatorial explosion** of possible test scenarios and the limitations of **manual testing**.
- **Finding Fun in Writing Tests:** Suggests a **mindset shift** to find enjoyment and creativity in writing tests, which can lead to better **testing practices**.

#### Additional Resources
- **[Shift-left testing approaches](https://swiftindepth.com/articles/shift-left-testing-approaches):** Explores specific approaches to **testing early** in the development cycle.
- **[Mobile System Design book](https://www.mobilesystemdesign.com):** A book that covers topics like **system design interviews**, **large app architectures**, and delivering **reusable components**.

<LinkCard title="Read Full Article" href="https://swiftindepth.com/articles/mobile_testing_challenges/" />

### 🔵 UI Tests, but easier

This article introduces a technique to simplify and accelerate the process of writing **UI tests** in **iOS development**. By **abstracting** complex UI test steps into small, **English-like scripts**, the approach enhances **readability** and reduces **cognitive load**, making it easier for developers to write and maintain **UI tests**.

The technique involves **refactoring** traditional UI tests into a more **expressive language** by encapsulating **element-hunting** into small, reusable **methods**. This approach transforms the tests into higher-level abstractions, allowing them to read more like **English sentences** rather than code. As a result, the tests become more **maintainable** and **scalable**, with a significant reduction in **complexity**.

By focusing on key actions such as **navigateToCourseOverview()**, **verifyUserIsOnCourseOverviewScreen()**, and **makeSureCourseNavigationWorks()**, developers can **group test steps** into reusable **scenarios**. This not only makes the tests easier to understand but also **improves efficiency** in testing larger flows within the application.

In summary, the article highlights the benefits of **creating an expressive UI testing language** in **Swift**—one that is more **intuitive** and less taxing on developers’ cognitive resources.

<details>

**URL:** https://swiftindepth.com/articles/uitests-easier/

**Published:** Not provided

**Authors:** `Tjeerd in 't Veen`

**Tags:**  
`UI Testing`, `Swift`, `iOS Development`

</details>

#### Key Points
- **Simplifies** writing UI tests by using higher-level **abstractions**.
- Enhances test **readability** by encapsulating complex steps into **methods**.
- Reduces **cognitive load** by turning UI tests into more **English-like scripts**.
- Improves **maintainability** by **grouping** test steps into reusable **scenarios**.

#### Summary of Contents
- **Introduction:** Discusses the challenges of writing traditional UI tests and introduces the concept of an **English-readable script**.
- **Thinking of UI Tests as an English-readable script:** Describes the process of **refactoring** UI tests into higher-level **abstractions** using static methods.
- **Defining a language:** Explains how to encapsulate **element-hunting** into tiny methods, effectively creating a **language** for UI testing.
- **Combining test-scripts into full-scale scenarios:** Demonstrates how to aggregate smaller test scripts into comprehensive test **scenarios**.

#### Additional Resources
- **Mobile System Design Book:** [Mobile System Design](https://www.mobilesystemdesign.com)
- **Author's Twitter:** [Tjeerd in 't Veen](https://twitter.com/tjeerdintveen)

<LinkCard title="Read Full Article" href="https://swiftindepth.com/articles/uitests-easier/" />
