---
slug: WhatIsTestDrivenDevelopment
title: What is Test Driven Development?
authors: [szymon]
tags: [testing]
---

Test-Driven Development (TDD) is a software development process relying on software requirements first being converted to test cases prior to writing any production code. Then, the correctness of all subsequent development is measured against those tests.

A typical TDD workflow would look like this:

1. Write a single test for the functionality you intend to build or amend.
2. Run the test and ensure that it fails (which it should as the functionality is not yet built).
3. Write just enough code to ensure the test passes.
4. Refactor the code and perform whatever clean up is necessary (remove duplication, Single Responsibility Principle, etc.)
5. Rinse and repeat all the while building up new features and tests simultaneously.

This approach is useful in helping reduce the frequency of regressions in your application and in increasing your project’s code coverage.

Writing these tests early on helps provide documentation about how the app is _expected_ to behave. TDD promotes writing modular and testable code as it forces the developer to think in small units of functionality that can be easily tested.

In discussions of TDD, you may often see it broken down into 3 stages - Red, Green, and Refactor.

**Red:**
Create a unit test that fails.

**Green:**
Write just enough production code to make your test pass.

**Refactor:**
Once your tests are passing, you’re free to make any changes to your code. This is your opportunity to clean up your implementation and refine your approach.

TDD only focuses on unit tests and doesn’t cover UI behavior or integration tests, so it’s often paired with additional testing paradigms.
