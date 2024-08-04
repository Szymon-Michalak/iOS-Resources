---
slug: WhatDoesItMeanForSomethingToBeThreadSafe
title: What does it mean for something to be thread safe?
authors: [szymon]
tags: [concurrency]
---

Code is considered thread-safe when it functions correctly during simultaneous execution by one or more threads. More specifically, thread safety ensures that some shared resource can only be modified by **one** thread at any given time.

Consider a scenario where your application has multiple threads all trying to access the same shared resource. Some threads may simply be attempting to read from the resource while other threads are trying to modify it.

Now, the resulting state of our application is entirely dependent on whichever thread _happens_ to finish execution first. Remember, in software development, we strive for determinism wherever possible.

Imagine a situation where two threads are attempting to modify the same document. In such a scenario, it’s possible for one thread to overwrite the changes made by the other. So, in order to make this operation thread safe, you have to ensure synchronized access to the resource. In other words, you’ll need to make all of the other threads wait until the current thread modifying the resource finishes execution.

Keep in mind that the ordering of the threads' access to some shared resource is determined by the operating system’s scheduler. Since the scheduler dispatches tasks based on the current resource availability, task priority, etc. it may order operations differently from moment to moment. So, there’s no guarantee that the threads will always execute their tasks in a particular order, hence the “race condition” problem.

Thread safety is generally discussed in relation to modifying a resource. This is due to the fact that multiple threads can read from a resource at the same time since this operation is not changing the resource in any way.
