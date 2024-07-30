## iOS Architect Crash Course

The iOS Architect Crash Course is designed to help developers master the skills necessary to become proficient in iOS architecture. This course covers essential principles and best practices for designing robust and scalable iOS applications.

<details>
**URL:** [https://iosacademy.essentialdeveloper.com/ios-architect-crash-course/july-2024-cfd0/](https://iosacademy.essentialdeveloper.com/ios-architect-crash-course/july-2024-cfd0/)

**Published:** July 2024

**Authors:** `[Essential Developer]`

**Tags:**  
`iOS`, `Architecture`, `Design Patterns`, `Best Practices`
</details>

#### Key Points
- Understanding the fundamentals of iOS architecture.
- Learning various design patterns used in iOS development.
- Implementing scalable and maintainable code structures.
- Best practices for code organization and project structuring.

#### Summary of Contents
- **Introduction:** An overview of the importance of good architecture in iOS development and what the course aims to teach.
- **Main Sections:**
  - **Architecture Fundamentals:** Core concepts of iOS architecture and why they matter.
  - **Design Patterns:** Detailed exploration of common design patterns like MVC, MVVM, and VIPER.
  - **Code Organization:** Techniques for organizing code to improve readability and maintainability.
  - **Scalability and Maintainability:** Strategies to ensure your codebase can grow and adapt over time.
- **Technical Details:** Practical implementation of design patterns, use of protocols, dependency injection, and testing strategies.
- **Applications and Examples:** Real-world examples and case studies demonstrating the application of architectural principles.
- **Conclusion:** Recap of the key takeaways and final thoughts on becoming an effective iOS architect.

<LinkCard title="Visit Course Page" href="https://iosacademy.essentialdeveloper.com/ios-architect-crash-course/july-2024-cfd0/" />


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

### Understanding iOS App Composition and Navigation Patterns

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

### Migrating from UIKit to SwiftUI: Challenges and Best Practices

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

### Core Bluetooth and Architectural Challenges in iOS Development

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

### Understanding Acceptance Testing in iOS Development

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

### Live Dev Mentoring Session: Handling Token Refresh in iOS with Async/Await
<details>
**URL:** https://www.youtube.com/watch?v=u2P49SmDC1M

**Published:** Jul 28, 2022  
**Last Updated:**  

## Authors
- Kyle from EssentialDeveloper.com
- Louise (Student)
- Mike, Bogdan (Mentors)

## Tags
`iOS Development`, `SwiftUI`, `Async/Await`, `Token Authentication`, `Auth0`, `Design Patterns`

</details>

## Summary
This live dev mentoring session addresses the challenge of handling token refreshes in an iOS application using modern Swift features like SwiftUI and Async/Await. Louise, a senior iOS developer, seeks guidance on integrating Auth0 for authentication, particularly focusing on efficiently managing token refreshes when multiple concurrent requests are involved. The session explores design patterns and best practices for preventing redundant token refreshes and ensures that the refresh mechanism is synchronized across the app.

## Key Points
- **Token Refresh Challenges:** The session highlights the issue of synchronizing token refresh requests to prevent multiple simultaneous refreshes that could lead to inefficiencies and errors.
- **Design Pattern Discussion:** The use of the decorator pattern for HTTP clients to manage authentication tokens is discussed. The design involves an `AuthHttpClient` decorator that interacts with an `AuthService` and a `TokenProvider`.
- **Synchronization Strategy:** The importance of synchronizing token refresh requests is emphasized, with discussion on whether this logic should reside in the HTTP client decorator or the `AuthService`.
- **Testing Concerns:** Strategies for testing the refresh token logic and handling external dependencies like Auth0 SDK are considered. Recommendations include using protocols and mocking to facilitate easier testing.

## Summary of Contents
- **Introduction:** Introduction to the problem of managing token refreshes in an iOS application using modern Swift technologies.
- **Main Sections:**
  - **Challenges with Token Refresh:** The difficulties of handling token refreshes and maintaining synchronization when multiple requests occur.
  - **Design Patterns:** Overview of the decorator pattern and how it is used to manage authentication in the HTTP client.
  - **Synchronization Logic:** Discussion on where to place the synchronization logic to handle token refresh requests efficiently.
- **Technical Details:** Detailed explanation of the `AuthHttpClient` decorator, `AuthService`, and `TokenProvider` components, and their interactions.
- **Applications and Examples:** Practical application of the discussed design in real-world scenarios such as dashboard and transaction features.
- **Conclusion:** Emphasis on the importance of synchronization and proper testing practices for token refresh mechanisms to ensure robust application behavior.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=u2P49SmDC1M" />

### Understanding Singletons in iOS Development

<details>
**URL:** https://www.youtube.com/watch?v=sankp8b2ccE

**Published:** Jan 12, 2023  
**Last Updated:**  

## Authors
- Caio, Mike, Bogdan

## Tags
`iOS development`, `Singleton pattern`, `SwiftUI`, `Memory management`, `Testing`

</details>

## Summary
This article provides an in-depth exploration of the Singleton pattern in iOS development, focusing on its benefits, pitfalls, and alternatives. It discusses the implications of global state management, memory leaks, and challenges in testing associated with Singletons.

## Key Points
- Singleton pattern enforces a class to have only one instance throughout the application.
- Benefits include ensuring data consistency and managing shared resources like databases.
- Challenges include potential for memory leaks, global state issues affecting multiple modules, and complexities in testing.
- Variants like shared instances (e.g., URLSession) offer convenience but don't enforce single instance constraints.
- Recommendations emphasize dependency injection to mitigate Singleton drawbacks.

## Summary of Contents
- **Introduction:** Overview of the mentoring session and the focus on iOS Singleton pattern.
- **Issues with Singletons:** Discussion on memory leaks, global state impacts, and testing difficulties.
- **Singleton Pattern Explained:** Definition and use cases where enforcing single instance constraint is beneficial.
- **Variants and Framework Examples:** Comparison with shared instances like URLSession and URLCache.
- **Testing and Legacy Code Challenges:** Addressing difficulties in testing Singleton-dependent code.
- **Recommendations:** Advocacy for dependency injection as an alternative to Singleton pattern.
- **Practical Demonstration:** Examination of a home view model and implications of shared state.
- **Conclusion:** Summary of best practices and considerations when using Singleton pattern in iOS development.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=sankp8b2ccE" />

# Threading, Operations, Queues, and Asynchronous Code in iOS Development

<details>
**URL:** https://www.youtube.com/watch?v=9_YD9L4ogSo

**Published:** Aug 27, 2020
**Last Updated:** 

## Authors
- https://twitter.com/caiozullo
- https://twitter.com/mrmichael

## Tags
`iOS development`, `asynchronous programming`, `threading`, `operations`, `queues`

</details>

## Summary
This mentoring session focuses on advanced iOS development topics related to threading, operations, queues, and handling asynchronous code effectively. Key discussions include testing asynchronous code, avoiding callback hell, preventing race conditions and deadlocks in main threads, and using recursion and immutable values to manage shared mutable state.

## Key Points
- Techniques for testing asynchronous code.
- Strategies to manage and chain multiple asynchronous tasks.
- Challenges of callback hell and how to mitigate them.
- Methods to prevent race conditions and deadlocks in iOS applications.
- Use of recursion and immutable values for simplifying complex operations.
- Practical insights into using MKDirections API for mapping applications.
- Implementation details of handling asynchronous operations within iOS apps.

## Summary of Contents
- **Introduction:** Overview of the mentoring session's objectives.
- **Threading and Asynchronous Code:** Discusses challenges and best practices.
- **MKDirections API:** Practical application in mapping and navigation apps.
- **Managing Asynchronous Operations:** Techniques to avoid callback hell and improve code maintainability.
- **Testing Strategies:** Importance of testing asynchronous code for reliability.
- **Conclusion:** Recap of key learnings and recommendations for iOS developers.

<LinkCard title="Watch Full Video" href="https://www.youtube.com/watch?v=9_YD9L4ogSo" />
