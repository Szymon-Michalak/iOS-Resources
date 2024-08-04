---
slug: OnWhatThreadShouldAllUIUpdatesBeMade
title: On what thread should all UI updates be made?
authors: [szymon]
tags: [uikit]
---


All UI updates should be performed on the Main Thread.

When your application launches, the `UIApplication` is set up on the Main Thread. From here, all of the views in your app ultimately descend from this `UIApplication` instance.

This means that any interaction with a `UIButton` or changes to the text in a `UILabel` have to be performed on the Main Thread as the application itself is configured to run on the Main Thread.

Furthermore, pending changes to the UI are not applied immediately. They are drawn at the end of the thread’s run loop. So, to ensure all of the UI updates are applied together (and are applied without any flickering or visual side effects), it’s important to have them all queued on the same thread.

If we had multiple threads of varying priorities and computational abilities performing UI updates, then the UI would flicker or be unpredictable as each thread would be changing the UI independently of the state reflected in another thread.

Moreover, it’s important to remember that the Main Thread is far more performant than all other threads. If we were to update our UI on the background thread (which has a lower priority and limited resources), the task would first be added to a queue of other potentially long-running tasks (i.e. downloading a file). Now, our UI update will not be applied until all of the other higher priority and previously queued tasks finish executing.

To avoid that poor user experience and to keep things simple, we delegate all of the “real-time” activity to the Main Thread. Since the Main Thread has so much more computational ability, delegating UI-centric tasks to it helps ensure the system applies these UI updates as fast as possible.
