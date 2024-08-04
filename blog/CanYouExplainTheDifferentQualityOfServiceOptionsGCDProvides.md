---
slug: CanYouExplainTheDifferentQualityOfServiceOptionsGCDProvides
title: Can you explain the different quality of service options GCD provides?
authors: [szymon]
tags: [concurrency]
---


The quality-of-service (QoS) options available on `DispatchQueue` allow us to categorize the importance of the work we’re scheduling.
The system will then intelligently prioritize tasks with higher quality-of-service designations.

Since higher priority work is performed more quickly and with more computational resources than lower priority work, it typically requires more energy than lower priority work.
So, by accurately specifying appropriate QoS classes for the work your app performs, you can help ensure that your app is responsive and energy efficient.

There are 4 QoS options we’ll look at in decreasing order of priority and performance:

**.userInteractive**
This designation should be used for work that is interacting with the user (i.e. refreshing the user interface or performing animations). In other words, it should be used for work that is of such high importance that if it doesn’t happen quickly the application may appear frozen.

Any work queued with this QoS designation happens nearly instantaneously.

**.userInitiated**
This is used for work that the user has initiated and requires immediate results. Actions like retrieving information from an API, opening or modifying a file, or generally any work that needs to be completed in order to continue with the user flow.

Any work queued with this QoS designation is generally completed within a few seconds or less.

**.utility**
This is used for work that may take some time to complete and doesn’t require an immediate result - actions like downloading or importing data.

Generally, tasks with this designation will also show some type of progress indicator to the user (like you see when you download a podcast or a Netflix episode). This QoS provides a balance between responsiveness, performance, and energy efficiency.

Any work queued with this QoS designation is generally completed within a few seconds to a few minutes.

**.background**
This final designation has the lowest priority and is used for tasks that are not visible to the user like indexing, synchronizing, backups, saving data, or any general purpose maintenance work.

Any work queued with this QoS designation can take considerable time to complete; anywhere from a few minutes to a few hours as the computational resources and priority given to tasks with this designation are minimal.

By categorizing the tasks you send toDispatchQueue,you enable the system to optimize the completion of those tasks by reallocating resources away from lower priority work and redirecting it to the higher priority tasks instead.
