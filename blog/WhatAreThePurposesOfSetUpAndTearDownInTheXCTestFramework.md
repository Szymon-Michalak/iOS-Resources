---
slug: WhatAreThePurposesOfSetUpAndTearDownInTheXCTestFramework
title: What are the purposes of setUp() and tearDown() in the XCTest framework?
authors: [szymon]
tags: [testing]
---


Whenever we run tests, we'll often want each test to run independently. More specifically, we want to ensure that each test is executed under identical conditions and the end state of one test doesn't inadvertently influence the start state of another test.

TheXCTestframework provides two functions we canuse to ensure these conditions are met - `setUp()` and `tearDown()`. These functions allow us toprepare and clean up all allocations and dependencies before the next test is run.

`setUp()`: This method is called before each test isinvoked and provides us an opportunity to reset state.

`tearDown()`: This method is called after every testmethod has finished execution and is used to perform any necessary clean up or releasing of resources.

These functions allow us to reuse data more easily in our tests.

For example, we can create instance variables to represent mock data in our `XCTestCase` class and then utilize the `setUp()` method to reset the initialstate of these variables for each test and the `tearDown()` method to perform any necessarycleanup after the test is completed.
