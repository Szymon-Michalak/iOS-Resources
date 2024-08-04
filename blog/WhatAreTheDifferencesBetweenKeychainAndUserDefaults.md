---
slug: WhatAreTheDifferencesBetweenKeychainAndUserDefaults
title: What are the differences between Keychain and UserDefaults?
authors: [szymon]
tags: [general]
---

`UserDefaults` and `Keychain` are both useful in storing small `key-value pairs` on the user's device, but their security capabilities differ greatly.

`Keychain` is the only native option for storing data on an iOS device in an encrypted manner.

It's typically meant for storing small amounts of data like an access token, credentials, or other sensitive information. However, while it is still the most secure offering on iOS, it’s important to know that `Keychain` data can be accessed on jailbroken devices.

Since `Keychain` is implemented as an SQLite database stored on the file system, it is slower than `UserDefaults`. Lastly, values stored in the `Keychain` will persist across application deletions and re-installs unless explicitly deleted.

`UserDefaults` also allows you to store `key-value` pairs across different invocations of your app, but it is not secure.

Values stored in `UserDefaults` are eventually written to a `.plist` file which are entirely human-readable.`UserDefaults` are usually used to store basic `key-value` pairs and user preferences. If you don't need the `Keychain`'s security features, `UserDefaults` are the more
convenient choice. Finally, unlike in the `Keychain`,items saved in `UserDefaults` will not persist across application deletions and re-installs.
