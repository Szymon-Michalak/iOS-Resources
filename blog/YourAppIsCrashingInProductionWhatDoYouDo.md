---
slug: YourAppIsCrashingInProductionWhatDoYouDo
title: Your app is crashing in production. What do you do?
authors: [szymon]
tags: [swift]
---

Unfortunately, there’s no one size fits all answer here, but the following explanation might provide a starting point.

The main focus of your answer should be on discussing an approach for isolating the bug, understanding how to replicate it consistently, how you would go about resolving the issue, creating a new release, and finally what preventative measures you would introduce as a result.

You can start off your answer by mentioning that you’ll try and identify the iOS version, app version, and device type of the affected users. Then, if you have access to the device logs, you’ll use them to help you reproduce the crash consistently. Knowing the exact steps that precipitated the crash will allow us to write better tests.

You could also mention that as part of the exploration into the issues, you’d use Exception Breakpoints, Debugger output, crash logs, etc. to help isolate the crash.

Or, if the issue is harder to replicate, you can mention that you might use the Debugger to manually set the application into all of its potential states. For example, if there was a crash during the sign in flow, you might manually put your app into the following states for testing purposes: logged in user, blocked user, account recovery mode, etc.

Subsequently, you might mention that once you’ve identified the offending area of code, you’ll look at recent pull requests that introduced changes in that area and work backwards from there.

**You want to demonstrate that you’ll be systematic and methodical in your debugging approach.**

Eventually, once you’ve identified a fix, you could talk about how you’ll test the fix thoroughly and ensure that it works across different device types and app configurations (e.g. user account types, languages, regions, etc.).

It may also be prudent to discuss that you’d write additional tests to cover this area of code to ensure the issue doesn’t happen again and to protect against future regressions.

With the fix in place, you can notify your team about the new hotfix and request a code review.
You could also mention that if this crash is critical, you would request an expedited review from Apple.

Once the fix has been released, you can discuss how you’ll monitor the new release and ensure that the reported crash numbers do in fact reduce and that your fix was successful.

With the crisis averted, your answer can now focus on how you’d prevent issues like this in the future.

You could bring up leveraging App Store Connect’s phased release feature which will slowly release the new version of your application. This will allow you to prevent untested code from becoming immediately available to all users. With a phased release, if you detect stability issues, you can easily pull the release before it affects a larger percentage of your user base.

Your final point could be about starting a discussion with your team to better understand how this issue made it past your tests and the code review process.

The main objective here is to demonstrate a methodical approach that covers identifying the issue, resolving it, and how you would prevent similar issues moving forward.
