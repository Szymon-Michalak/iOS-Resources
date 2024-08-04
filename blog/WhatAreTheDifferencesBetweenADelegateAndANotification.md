---
slug: WhatAreTheDifferencesBetweenADelegateAndANotification
title: What are the differences between a delegate and a notification?
authors: [szymon]
tags: [general]
---


Delegates and notifications are different mechanisms for informing objects about events or actions taking place in other parts of your app. Though they differ fundamentally in how they communicate, both of these options can help reduce coupling between entities in your code.

Let's look at delegates first.

A delegate is like a phone call - not only can you communicate with the person on the other end, but they can also communicate with you. In a similar way, delegates are used to establish two-way communication between objects.

There's no need for the delegating object to know specifics about the object it's talking to; the receiving object simply needs to implement the required protocol.

Typically, delegates are used when you want the object receiving the events to influence the sending object. We know, for example, that a class that implements the `UITableViewControllerDelegate` will be notified whenevents occur in a `UITableView` (e.g. the selection of a cell). This class can then handle the event in whatever way it wishes (e.g. present a new view, issue a command toUITableView,etc.).

In contrast, a notification is more of a broadcast than a strict two-way communication. For example, whenever a user changes time zones or night mode is activated, iOS notifies all listening objects so they can adjust accordingly.

Notifications help reduce coupling between the sending and receiving objects as the sending object simply publishes a notification, but is unaware of who or if anyone is listening. Unlike with delegates, the objects receiving the notification cannot communicate with or interact with the sender as notifications are only a one-way communication.

In summary, the main difference between a delegate and a notification is that the former is used for one-to-one messaging while the latter is used for one-to-many messaging.

The appropriate choice will depend on your use case.
