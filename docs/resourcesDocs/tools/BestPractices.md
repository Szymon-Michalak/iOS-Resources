---
title:  📏 Best Practices
description: Best Practices
---

### iOS Pull Request Checklist

This checklist provides a comprehensive guide for reviewing iOS pull requests, ensuring code quality and consistency in Swift projects.

<details>

**URL:** [iOS Pull Request Checklist](https://github.com/aryamansharda/iOS-Pull-Request-Checklist)

**Source:** [GitHub Repository](https://github.com/aryamansharda/iOS-Pull-Request-Checklist)

**Author:** `Aryaman Sharda`

**Tags:**  
`Swift`, `iOS`, `Code Review`, `Best Practices`

**Platforms Supported:** iOS

**Swift Version:** 5.0 and above
</details>

#### Key Points
- Ensures adherence to coding standards and best practices.
- Focuses on code readability, performance, and security.
- Covers aspects like architecture, testing, and documentation.

#### Use Cases
- Standardizing code review processes across teams.
- Improving code quality and reducing technical debt.
- Facilitating consistent and thorough code reviews.

#### Alternative Approaches
- Using automated code review tools like SwiftLint.
- Implementing custom code review guidelines tailored to specific projects.
- Combining with peer review practices for comprehensive checks.

#### Checklist Categories
- **Code Quality:** Checks for code readability, maintainability, and adherence to standards.
- **Architecture:** Ensures proper design patterns and architectural principles.
- **Testing:** Verifies the presence and quality of unit and UI tests.
- **Documentation:** Ensures comprehensive documentation of code and changes.
- **Performance:** Checks for efficient and optimized code.
- **Security:** Ensures code is secure and free from vulnerabilities.

#### Related Resources
- [SwiftLint Documentation](https://realm.github.io/SwiftLint/)
- [iOS Code Review Guidelines](#)

#### References
- [Apple's Official Swift Documentation](https://developer.apple.com/documentation/swift)
- [iOS Code Quality Guide](#)

<LinkCard title="Visit Checklist" href="https://github.com/aryamansharda/iOS-Pull-Request-Checklist" />

### iOS Asset Names
This repository provides a comprehensive list of **iOS Asset Names** used across various iOS applications. It is an invaluable resource for developers looking to standardize or reference asset names efficiently, avoiding common pitfalls related to incorrect asset naming conventions.

<details>

**URL:** https://github.com/dkhamsing/ios-asset-names

**Created:** 2015-10-19

**Last Updated:** 2024-08-31

**Authors/Curators:** `David Khamsing`

**Tags:**  
`iOS`, `Asset Management`, `Best Practices`, `Development Tools`, `Resources`

</details>

#### Overview
The **iOS Asset Names** repository is a curated list that includes commonly used asset names in iOS development. The repository aims to help developers maintain consistency and adhere to best practices when naming assets in their projects. By providing a standardized reference, it minimizes errors that can occur due to misnamed assets, which is especially useful in large teams or open-source projects.

#### Categories
The repository organizes asset names into several key categories, making it easy to find the relevant names for specific types of assets:

- **General Assets:** Includes names for commonly used images, icons, and other assets that are widely applicable across various types of iOS apps.
- **UI Components:** This category lists names specific to user interface elements, such as buttons, navigation bars, and tab bar icons.
- **App-Specific Assets:** Contains names that are often used in specific types of applications, such as e-commerce, social media, or productivity apps.


<LinkCard title="Visit iOS Asset Names" href="https://github.com/dkhamsing/ios-asset-names" />


### Google Swift Style Guide

<details>
**URL:** [Google Swift Style Guide](https://google.github.io/swift/#special-escape-sequences)

**Published:** Not specified  
**Last Updated:** Not specified

**Authors:** Google Swift Team

**Tags:**  
`Swift`, `Style Guide`, `Coding Standards`
</details>

#### Key Points
- Based on Apple’s Swift standard library style with input from Google’s Swift projects.
- Emphasizes clear and consistent code formatting practices.
- Covers file structure, whitespace usage, string literals, and special escape sequences.
- Provides guidelines on naming conventions and the use of comments and imports.

#### Summary of Contents
- **Introduction:** Overview of the Google Swift style guide.
- **Source File Basics:** Naming conventions and file encoding.
- **Whitespace Characters:** Usage of whitespace, excluding tab characters.
- **Special Escape Sequences:** Guidelines on using special escape sequences.
- **Source File Structure:** Recommendations on organizing code within source files.
- **General Formatting:** Rules for column limit, braces, semicolons, and line-wrapping.
- **Documentation Comments:** Standards for documenting code with examples.
- **Programming Practices:** Best practices for initializers, properties, and access levels.

<LinkCard title="Read Full Article" href="https://google.github.io/swift/#special-escape-sequences" />

### Kodeco Swift Style Guide

<details>
**URL:** [https://github.com/kodecocodes/swift-style-guide](https://github.com/kodecocodes/swift-style-guide)

**Published:** Not specified  
**Last Updated:** Updated for Swift 5

**Authors:**  
- Greg Heo
- Ray Fix
- Robb Critz
- Colin Eberhardt
- Samuel DeVore
- and others

**Tags:**  
`Swift`, `iOS Development`, `Style Guide`, `Best Practices`

</details>

#### Key Points
- Focuses on creating clear, consistent, and concise Swift code for print and web readability.
- Emphasizes using SwiftLint and adhering to Kodeco’s SwiftLint configuration.
- Discusses naming conventions, code organization, and best practices for classes, methods, and properties.
- Provides guidelines for generics, optionals, closures, and memory management.
- Highlights the importance of minimal imports, spacing, and protocol conformance.

#### Summary of Contents
- **Introduction:** Overview of the purpose of the style guide.
- **Correctness:** Emphasizes writing code that compiles without warnings.
- **Using SwiftLint:** Encourages or requires the use of SwiftLint for consistent code style.
- **Naming:** Guidelines for naming conventions following Swift API Design Guidelines.
- **Code Organization:** Utilizes extensions for logical code organization.
- **Protocol Conformance:** Best practices for adding protocol conformance.
- **Unused Code:** Advocates for removing dead or unused code.
- **Minimal Imports:** Recommends importing only necessary modules.
- **Spacing:** Uses 2 spaces for indentation and avoids C-style comments.

<LinkCard title="Read Full Article" href="https://github.com/kodecocodes/swift-style-guide" />

### Git Commit Message Guidelines
This blog post by Tim Pope emphasizes the importance of writing clear and concise git commit messages. Pope argues that a well-crafted commit message helps maintain a project's history, makes it easier for others to understand changes, and ultimately contributes to the overall quality of the codebase. The article provides practical tips on how to write effective commit messages, including the use of imperative mood and keeping the first line short.

<details>

**URL:** https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

**Platform:** Git, Version Control Systems

**Created:** 2008-04-19

**Authors/Developers:** `Tim Pope`

**Tags:**  
`git`, `commit-messages`, `best-practices`, `version-control`

</details>

#### Key Points
- **Imperative Mood Enforcement:** Encourages the use of imperative mood in commit messages.
- **Commit Message Structure:** Provides a standardized structure for commit messages with a concise summary and optional detailed body.
- **History Clarity:** Ensures commit history remains clear and informative for future developers.

#### Use Cases
- **Team Collaboration:** Ensures all team members follow the same commit message conventions.
- **Open Source Projects:** Helps maintain a clear and understandable history for contributors and maintainers.
- **Code Reviews:** Facilitates better code reviews by providing clear context for each change.

<LinkCard title="Learn More" href="https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html" />

### Conventional Commits
This repository is a curated collection of resources, tools, and best practices for implementing the Conventional Commits specification in your projects. Conventional Commits is a standardized format for commit messages that allows for more readable and consistent histories, which can be leveraged for automated versioning and change logs.

<details>

**URL:** [Conventional Commits](https://www.conventionalcommits.org/)

**Authors/Curators:** `Conventional Commits Team`

**Tags:**  
`commit-messages`, `best-practices`, `version-control`, `semantic-versioning`

</details>

#### Categories

- **Specification:** Detailed documentation on the Conventional Commits specification, including format rules, and examples.
  - **[Specification Overview](https://www.conventionalcommits.org/en/v1.0.0/):** Introduction and full documentation of the Conventional Commits specification.
  
- **Tools:** A curated list of tools and libraries that help enforce Conventional Commits in your projects.
  - **[Commitizen](http://commitizen.github.io/cz-cli/):** A tool that prompts users to write commit messages in the Conventional Commits format.
  - **[Conventional Changelog](https://github.com/conventional-changelog/conventional-changelog):** Automatically generate a changelog based on the Conventional Commits specification.
  - **[Husky](https://github.com/typicode/husky):** A tool to enforce commit message conventions with git hooks.

- **Best Practices:** Articles and guides on how to implement Conventional Commits effectively in different types of projects.
  - **[Best Practices Guide](https://www.conventionalcommits.org/en/v1.0.0/#why-use-conventional-commits):** A guide on why and how to use Conventional Commits.
  - **[Real-World Examples](https://github.com/commitizen/conventional-commit-types):** Examples of Conventional Commits in action.


<LinkCard title="Visit Conventional Commits" href="https://www.conventionalcommits.org/" />
