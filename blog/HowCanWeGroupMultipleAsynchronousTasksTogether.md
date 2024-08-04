---
slug: HowCanWeGroupMultipleAsynchronousTasksTogether
title: How can we group multiple asynchronous tasks together?
authors: [szymon]
tags: [concurrency]
---


Swift’s `DispatchGroup` allows us to group together and monitor the completion status of multiple asynchronous tasks.

With `DispatchGroup`, we attach multiple work itemsto a group and schedule them for asynchronous execution on the same queue or on different queues. Then, when all of the work items are finished executing, the `DispatchGroup` executes its notify completion handler.

There are several situations where you might use a `DispatchGroup`. For example, if you need to make several independent web requests to fetch information before the user can proceed, you can have each of the individual requests happen asynchronously, but group all of them together. This will allow each request to finish on its own accord, but will wait till all requests are finished before proceeding.

Or, if you were uploading a collection of photos, you might have several asynchronous photo upload tasks as this would allow each photo to be uploaded independently of the others.
Then, when all photo uploads are complete, you could use the notify completion handler to show the user a success message.

With a `DispatchGroup`, you enter the group when you start your task and you leave when you finish. When the count of group members goes to zero - every enter() has a matching leave()- the `DispatchGroup` knows that it can go aheadand call its notify completion handler.

```swift
class DispatchGroupDemo {
    func uploadImages(images: [UIImage]) {
        let group = DispatchGroup()

        for image in images {
            group.enter()
            ImageUploader.upload(image) {
            // Successfully uploaded photo
            group.leave()
            }
        }
        group.notify(queue: .main) {
    // TODO: Show user success message
        }
    }
}
```

Eachnimage in images is uploaded independently and only once all of the upload tasks are complete will our notify closure be executed.

If you’re using `OperationQueues` instead, you can simply add dependencies between tasks so they complete sequentially, but are essentially treated as a group of related tasks.
