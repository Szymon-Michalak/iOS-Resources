---
slug: CanYouExplainTheDifferentQualityOfServiceOptionsGCDProvides
title: Can you explain the different quality of service options GCD provides?
authors: [ace-the-ios-interview]
tags: [concurrency]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**
    - [What is QoS (Quality of Service) in GCD? | Swift Pal](https://www.swiftpal.io/articles/what-is-qos-quality-of-service-in-gcd-swift)
  
  **Further Reading:**
    - [Ultimate Grand Central Dispatch tutorial in Swift | The.Swift.Dev](https://theswiftdev.com/ultimate-grand-central-dispatch-tutorial-in-swift/)
    - [DispatchQoS.QoSClass | Apple Developer](https://developer.apple.com/documentation/dispatch/dispatchqos/qosclass)
</details>

:::info[TL/DR]
The different Quality of Service (QoS) options in Grand Central Dispatch (GCD) are used to prioritize tasks based on their importance and urgency:

- **.userInteractive**: Highest priority for tasks interacting with the user, like UI updates. These tasks should be completed immediately to avoid freezing the app.
- **.userInitiated**: Used for tasks initiated by the user that need to be completed quickly, such as fetching data or opening files. Typically completed within seconds.
- **.utility**: For longer-running tasks that don’t need immediate results, such as downloading files. Provides a balance between responsiveness and efficiency, usually completed in seconds to minutes.
- **.background**: Lowest priority for tasks that are not visible to the user, like maintenance work. These tasks can take from minutes to hours to complete.

Assigning the correct QoS helps optimize app performance and energy efficiency.
:::


The quality-of-service (QoS) options available on `DispatchQueue` allow us to categorize the importance of the work we’re scheduling.
The system will then intelligently prioritize tasks with higher quality-of-service designations.

Since higher priority work is performed more quickly and with more computational resources than lower priority work, it typically requires more energy than lower priority work.
So, by accurately specifying appropriate QoS classes for the work your app performs, you can help ensure that your app is responsive and energy efficient.

There are 4 QoS options we’ll look at in decreasing order of priority and performance:

:::note `.userInteractive`
This designation should be used for work that is interacting with the user (i.e. refreshing the user interface or performing animations). In other words, it should be used for work that is of such high importance that if it doesn’t happen quickly the application may appear frozen.

**Any work queued with this QoS designation happens nearly instantaneously.**
:::

:::note `.userInitiated`
This is used for work that the user has initiated and requires immediate results. Actions like retrieving information from an API, opening or modifying a file, or generally any work that needs to be completed in order to continue with the user flow.

**Any work queued with this QoS designation is generally completed within a few seconds or less.**
:::

:::note `.utility`
This is used for work that may take some time to complete and doesn’t require an immediate result - actions like downloading or importing data.

Generally, tasks with this designation will also show some type of progress indicator to the user (like you see when you download a podcast or a Netflix episode). This QoS provides a balance between responsiveness, performance, and energy efficiency.

**Any work queued with this QoS designation is generally completed within a few seconds to a few minutes.**

:::

:::note `.background`
This final designation has the lowest priority and is used for tasks that are not visible to the user like indexing, synchronizing, backups, saving data, or any general purpose maintenance work.

**Any work queued with this QoS designation can take considerable time to complete**; anywhere from a few minutes to a few hours as the computational resources and priority given to tasks with this designation are minimal.
:::


By categorizing the tasks you send to `DispatchQueue`, you enable the system to optimize the completion of those tasks by reallocating resources away from lower priority work and redirecting it to the higher priority tasks instead.

:::tip[In Bullets]

- **.userInteractive**:
  - Highest priority.
  - For tasks interacting directly with the user (e.g., UI updates, animations).
  - Must be completed immediately to keep the app responsive.

- **.userInitiated**:
  - High priority.
  - For tasks initiated by the user requiring quick results (e.g., fetching data, opening files).
  - Typically completed within seconds.

- **.utility**:
  - Medium priority.
  - For longer-running tasks not requiring immediate results (e.g., downloading files).
  - Balances responsiveness and efficiency; completed in seconds to minutes.

- **.background**:
  - Lowest priority.
  - For non-visible tasks like maintenance work (e.g., backups, indexing).
  - Can take from minutes to hours to complete.
:::