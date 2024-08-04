---
slug: WhatAreTheDifferentURLSessionConfigurationOptions
title: What are the different URLSessionConfiguration options?
authors: [szymon]
tags: [general]
---


`URLSession` is the main object responsible for managing `HTTP` & `HTTPS` requests in iOS.

In order to create a `URLSession`, we need to initialize it with a `URLSessionConfiguration` type:

```swift
URLSession(configuration: .default)
```

The default `URLSessionConfiguration` uses a persistent disk-based cache and stores
credentials in the user’s keychain.

Next, we have the ephemeral `URLSessionConfiguration` type.

```swift
URLSession(configuration: .ephemeral)
```

It’s similar to the default configuration, however it doesn’t maintain a cache, store credentials, or save any session-related data to disk. Hence, the name “ephemeral”.

Instead, all session-related data is stored in RAM. The only time an ephemeral session writes data to disk is when you explicitly instruct it to write the contents of a URL to a file.

Finally, we have the background configuration type:
```swift
URLSession(configuration: .background(withIdentifier: "IDENTIFIER_NAME"))
```
This creates a `URLSessionConfiguration` object that allows `HTTP` and `HTTPS` uploads or downloads to be performed in the background. This configuration is most commonly used when transferring data files while the app runs in the background.

A `URLSession` configured with this type hands controlof the transfer over to the system which then handles the file transfer in a separate process. In iOS, this configuration makes it possible for transfers to continue even when the app is suspended or terminated.
