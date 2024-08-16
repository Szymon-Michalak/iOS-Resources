---
slug: WhatAreOurOptionsForStorageAndPersistence
title: What are our options for storage and persistence?
authors: [ace-the-ios-interview]
tags: [general]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

Some of the options include:

**User Defaults**

We can useUserDefaultsto store simple `key-value` pairs in an insecure manner. Typically, you would only use `UserDefaults` to store something lightweightlike a user setting.

**.plist**

We can use a `.plist` to store larger data sets. It’s a really flexible human-readable format.

**Keychain**

This is the only encrypted persistent storage option available on iOS and is used for storing highly sensitive key-value pairs (primarily credentials).

**Disk Storage**

We can serialize data, domain models, or other downloaded content and save them directly to disk.

**Core Data / SQLite**

Useful in cases where we have larger data sets and are interested in making queries on the data.
