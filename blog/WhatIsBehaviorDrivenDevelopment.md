---
slug: WhatIsBehaviorDrivenDevelopment
title: What is Behavior Driven Development?
authors: [szymon]
tags: [concurrency]
---

Behavior Driven Development (BDD) is a software development methodology that aims to document and design an application based around the behavior the end user is expected to experience. In other words, it is behavior and results focused instead of implementation focused.

For example, when you’re writing traditional unit tests, you’ll often write tests for all of the various inputs a particular function could expect to receive and assert that the result matches what you’d expect.

This approach though is entirely focused on the implementation details of your application. As a result, you spend more time testing particulars of the implementation over the actual business logic of your application. BDD strives to tip the balance in the other direction by focusing on testing _what_ your application does insteadof _how_ it does it.

In BDD, when writing tests, you’ll start with a user story and model your tests around the expected behavior for the end user. While Swift doesn’t support writing BDD style tests natively, popular frameworks like Quick & Nimble allow us to add BDD style testing to the iOS ecosystem.

Here’s an example test case written in the BDD style - notice that we’re focusing on testing the end result instead of how we get there:
```swift
describe("the favorite button") {
    it("is selected if the participant is already a favorite") {
        favorite = TestUtils.fakeFavorite()
        createFavoritesViewController()
        expect(viewController.favoriteButton.isFavorited).to(beTrue())
    }

    it("is not selected if the participant is not already a favorite") {
        favorite = nil
        createFavoritesViewController()
        expect(viewController.favoriteButton.isFavorited).to(beFalse())
    }
}

describe("Email/Password Authentication") {
    context("when user presses sign in") {
        it("shows login view") {
            homeScreenViewController.signInButton
                .sendActions(for: .touchUpInside)
            expect(navigationControler.topViewController)
                .toEventually(beAKindOf(LoginViewController.self))
        }
    }

    context("when user presses sign up") {
        it("shows sign up and interactor not called") {
            homeScreenViewController.registerButton
                .sendActions(for: .touchUpInside)
            expect(navigationControler.topViewController)
                .toEventually(beAKindOf(RegisterViewController.self))
        }
    }
}
```

BDD tests follow the *Given*, *When*, and *Then* format.

If we consider the examples above, we start with the describekeyword which clarifies the action or behavior we’re looking to test and establishes any preconditions for the test *given*.

Next, the `context` block describes the conditions inwhich this behavior should be expected *when*.

Finally, the `it` block specifies the expected behaviorand validates the results *then*.

Typically, you’d start with the user story and work backwards to fill out these sections.

This style of writing tests very closely models written language and as a result BDD style tests are often more readable and easily maintained than their unit testing counterparts. This style of testing also makes the expected behavior extremely clear and is reasonably self-documenting.
