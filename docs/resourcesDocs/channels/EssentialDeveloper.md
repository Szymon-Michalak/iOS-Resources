### Testing & Refactoring existing iOS/Swift code, MVC vs MVVM, Singleton vs DI | iOS Dev Live Mentoring

<details>
**URL:** [https://www.youtube.com/watch?v=UlmataDRLx0](https://www.youtube.com/watch?v=UlmataDRLx0)

**Published:** 2 years ago  
**Last Updated:** N/A

**Authors:** Essential Developer

**Tags:**  
`iOS development`, `Swift`, `refactoring`, `MVC`, `MVVM`, `Dependency Injection`

</details>

#### Key Points
- Importance of refactoring existing iOS codebases with confidence through automated testing.
- Comparison between MVC (Model-View-Controller) and MVVM (Model-View-ViewModel) architectures.
- Benefits of Dependency Injection (DI) over Singleton pattern for reducing coupling and improving testability.

#### Summary of Contents
- **Introduction:** Discusses the significance of refactoring in iOS development and the role of automated testing in maintaining code integrity.
- **Main Sections:** Covers adding tests to legacy iOS code, refactoring from MVC to MVVM architecture, and leveraging Dependency Injection.
- **Technical Details:** Emphasizes the need for non-coupled tests, proper structuring of MVVM components, and techniques for implementing DI.
- **Applications and Examples:** Provides practical demonstrations on refactoring and testing iOS code, illustrating the transition from Singleton to DI.
- **Conclusion:** Highlights the benefits of these practices in improving code maintainability, reducing bugs, and enhancing developer productivity.

<LinkCard title="Link to Resource" href="https://www.youtube.com/watch?v=UlmataDRLx0" />

---

# Understanding iOS App Composition and Navigation Patterns

<details>
**URL:** https://www.youtube.com/watch?v=8dMdTKoad90

**Published:** May 12, 2022 
**Last Updated:**
</details>

## Authors: 
- https://twitter.com/caiozullo
- https://twitter.com/mrmichael

## Tags
`iOS Development`, `Navigation Patterns`, `Composition Root`, `Factory Pattern`, `Dependency Injection`

## Summary
This article discusses strategies for managing app navigation and composition in iOS development, focusing on the challenges of maintaining a clean and scalable composition root. It explores the use of factory patterns and dependency injection to handle complex navigation flows efficiently.

## Key Points
- Importance of structuring the composition root to handle large-scale navigation and component instantiation.
- Discussion on using factory patterns to encapsulate the creation of view controllers and their dependencies.
- Challenges in adhering to Single Responsibility Principle (SRP) when designing composition roots.
- Recommendations on separating navigation logic from object creation in factories to improve maintainability and testability.
- Insights into integrating dependency injection to manage dependencies and facilitate easier testing.

## Summary of Contents
- **Introduction:** Overview of the importance of a well-structured composition root in iOS apps.
- **Challenges in Composition Root:** Discussing complexities and pitfalls in managing navigation and object instantiation.
- **Factory Pattern Usage:** Exploring how factory patterns can simplify the creation of view controllers and manage their dependencies.
- **Dependency Injection:** Benefits and implementation strategies for using dependency injection in iOS apps.
- **Testing Strategies:** Recommendations on how to improve testability by separating concerns in the composition root.
- **Conclusion:** Recap of best practices and final thoughts on designing robust composition roots in iOS development.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=8dMdTKoad90" />

# Migrating from UIKit to SwiftUI: Challenges and Best Practices

<details>
**URL:** https://www.youtube.com/watch?v=Y2nwUk0tJ7c

**Published:** Apr 27, 2023
**Last Updated:** 

## Authors
-   https://twitter.com/caiozullo
-   https://twitter.com/mrmichael  

## Tags
`iOS development`, `SwiftUI`, `MVVM`, `MVP`, `UIKit`

</details>

## Summary
The article discusses the challenges and best practices involved in migrating an iOS application from UIKit to SwiftUI, focusing on architecture patterns like MVVM and MVP. It emphasizes practical approaches to maintaining flexibility and efficiency during this transition.

## Key Points
- Importance of migrating to SwiftUI for improved UI simplicity and modern design paradigms.
- Challenges encountered in the migration process, such as SwiftUI's limitations compared to UIKit.
- Recommendations to selectively use SwiftUI where it enhances productivity, while leveraging UIKit for complex features.
- Comparison of MVVM and MVP architecture patterns in the context of SwiftUI and UIKit integration.
- Discussion on the use of service locator patterns and their drawbacks, suggesting alternatives for dependency injection.

## Summary of Contents
- **Introduction:** Overview of the transition from UIKit to SwiftUI and its benefits.
- **Main Sections:** Detailed exploration of MVVM and MVP patterns in SwiftUI and UIKit.
- **Technical Details:** Explanation of SwiftUI's struct-based nature and its implications for architecture.
- **Applications and Examples:** Practical examples of integrating SwiftUI for UI components while maintaining UIKit for complex logic.
- **Conclusion:** Advice on choosing between MVVM and MVP based on project requirements and developer comfort.

<LinkCard title="Watch Full Video" href=" https://www.youtube.com/watch?v=Y2nwUk0tJ7c" />

# Core Bluetooth and Architectural Challenges in iOS Development

<details>
**URL:** https://www.youtube.com/watch?v=QhEzbCXjjwg

**Published:** Apr 20, 2023
**Last Updated:**

## Authors
- https://twitter.com/caiozullo
- https://twitter.com/mrmichael

## Tags
`iOS development`, `Core Bluetooth`, `Architectural Patterns`, `Dependency Inversion`, `Swift`, `SwiftUI`
</details>

## Summary
This session discusses the complexities of integrating Core Bluetooth in iOS apps, focusing on architectural challenges and solutions. It emphasizes the Dependency Inversion Principle to manage diverse Bluetooth device protocols effectively.

## Key Points
- Introduction to using Core Bluetooth for device communication in iOS apps.
- Challenges in handling multiple components: scanning, connecting, and communicating with Bluetooth devices.
- Issues with testing due to private initializers in Core Bluetooth classes.
- Variability in device types (e.g., medical devices) and their unique communication protocols.
- Overview of third-party libraries and their varying integration approaches.
- Introduction to the Dependency Inversion Principle as a solution for managing diverse device interfaces.
- Explanation of creating interfaces based on app requirements, not framework specifics.
- Considerations for structuring interfaces to accommodate different device behaviors.
- Importance of avoiding over-complicated interfaces through proper design principles.
- Practical examples and strategies for improving maintainability and testability in Bluetooth-dependent applications.

## Summary of Contents
- **Introduction:** Overview of Core Bluetooth usage and application scenarios.
- **Challenges with Architecture:** Handling complexity in scanning, connecting, and communicating with Bluetooth devices.
- **Testing Challenges:** Difficulties in testing due to Core Bluetooth API constraints.
- **Dependency Inversion Principle:** Solution for decoupling app logic from specific device frameworks.
- **Creating Effective Interfaces:** Strategies for designing interfaces that meet app-specific needs.
- **Practical Applications:** Real-world examples of managing diverse Bluetooth device integrations.
- **Conclusion:** Recap of the benefits of using Dependency Inversion for scalable and maintainable iOS applications.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=QhEzbCXjjwg" />

# Understanding Acceptance Testing in iOS Development

<details>
**URL:** https://www.youtube.com/watch?v=Zf6x_lLAuiU

**Published:** Nov 23, 2023
**Last Updated:** 

## Authors
- [Author Names]

## Tags
`iOS development`, `Acceptance Testing`, `UIKit`, `SwiftUI`, `Integration Testing`
</details>

## Summary
This session focuses on acceptance testing in iOS development, covering both theoretical concepts and practical implementation strategies. It explores the definition of acceptance tests, their distinction from integration tests, and best practices for writing reliable and readable tests using UIKit and SwiftUI.

## Key Points
- Acceptance tests verify that software meets business requirements from a user's perspective.
- They are automated tests designed to check end-to-end functionality, simulating user interactions.
- Acceptance tests are written collaboratively with business stakeholders to ensure alignment with user stories.
- Unlike integration tests, which verify component interactions, acceptance tests focus on user-centric behaviors.
- Strategies for improving test reliability include testing features in isolation and minimizing reliance on UI tests for faster feedback loops.

## Summary of Contents
- **Introduction:** Overview of the session's objectives and introduction of participants.
- **Definition of Acceptance Testing:** Explanation of what constitutes acceptance tests and their role in agile development.
- **Distinguishing from Integration Tests:** Clarification on how acceptance tests differ from integration tests in scope and purpose.
- **Collaborative Testing Approach:** Importance of involving business stakeholders in writing and validating acceptance criteria.
- **Practical Strategies:** Tips on writing effective acceptance tests using UIKit and SwiftUI.
- **Testing Pyramid and Strategy:** Discussion on integrating acceptance tests into a broader testing strategy, emphasizing efficiency and reliability.
- **Conclusion:** Recap of key insights and recommendations for integrating acceptance testing effectively into iOS development workflows.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=Zf6x_lLAuiU" />
