---
slug: WhatIsAdSYMFile
title: What is a .dSYM file?
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

Whenever we upload our app to Apple, we remove some information (called symbols) from the compiled executable which specify exactly what functions and variables are being referenced.

This intentional process of removing this data from our executable can not only help reduce the size of our application's binary, but also helps in making our application more difficult to reverse engineer.

Without the inclusion of these symbols, our crash logs look like this:

```swift
0 libswiftCore.dylib 0x000000018f3c93800x18f394000 + 217984
1 libswiftCore.dylib 0x000000018f3c93800x18f394000 + 217984
2 libswiftCore.dylib 0x000000018f3c88440x18f394000 + 215108
3 libswiftCore.dylib 0x000000018f3a74e00x18f394000 + 79072
4 libswiftCore.dylib 0x000000018f3ab0d80x18f394000 + 94424
5 F49088168M 0x00000001045ac7500x104590000 + 116560
6 F49088168M 0x00000001045b79040x104590000 + 162052
7 F49088168M 0x00000001045b897c0x104590000 + 166268
8 F49088168M 0x000000010459d9140x104590000 + 55572
9 F49088168M 0x00000001045a0e700x104590000 + 69232
10 F49088168M 0x00000001045a0f4c0x104590000 + 69452
```

Clearly, it’s hard to tell what’s going on - all we see are memory addresses.

That’s where the `.dSYM` file comes in.

The `.dSYM` file (debug symbol file) contains the informationrequired to convert a stack-trace into a human-readable format. This file is automatically created with every release build and is used by Xcode to put the symbols back into the crash report thereby allowing you to read it properly.

Through a process known as re-symbolication, we can leverage our `.dSYM` file to convert our crash logs to something like this instead:

```swift
0 libswiftCore.dylib 0x000000018f3c9380 closure # 1 in closure # 1 in closure # 1 in _assertionFailure+ 217984 (_:_:file:line:flags:) + 452
1 libswiftCore.dylib 0x000000018f3c9380 closure # 1 in closure # 1 in closure # 1 in _assertionFailure+ 217984 (_:_:file:line:flags:) + 452
2 libswiftCore.dylib 0x000000018f3c8844 _assertionFailure+ 215108 (_:_:file:line:flags:) + 468
3 libswiftCore.dylib 0x000000018f3a74e0 _ArrayBuffer._checkInoutAndNativeTypeCheckedBounds+ 79072 (_:wasNativeTypeChecked:) + 208
4 libswiftCore.dylib 0x000000018f3ab0d8 Array.subscript.getter + 84
5 F49088168M 0x00000001045ac750 static ELM327ResponseManager.getResponse(responseStr:obd2Protocol:) + 116560 (ELM327ResponseManager.swift: 27 )
6 F49088168M 0x00000001045b7904 ELM327Client.dataInput(_:characteristicUuidStr:) + 162052 (ELM327Client.swift: 56 )
7 F49088168M 0x00000001045b897c protocol witness for BLEClientInputPort.dataInput(_:characteristicUuidStr:) in conformance ELM327Client + 166268 (<compiler-generated>:0)
8 F49088168M 0 x000000010459d914 BLEConnection.peripheralDataReceived(data:characteristicUuidStr:) + 55572 (BLEConnection.swift:124)
9 F49088168M 0 x00000001045a0e70 BLEConnection.peripheral(_:didUpdateValueFor:error:) + 69232 (BLEConnection.swift:293)
10 F49088168M 0 x00000001045a0f4c @objc BLEConnection.peripheral(_:didUpdateValueFor:error:) + 69452 (<compiler-generated>:0)
```

You’ll see that our crash logs now contain real method and variable names which makes debugging far easier.

Some services, like Crashlytics, will automatically re-symbolicate the crash reports for you so they're more human readable. This process allows us to ensure our crash logs are obfuscated for everyone else, but still readable and useful to us as developers.

Simply put, removing these symbols from our executable helps us ensure that our app is not only difficult to reverse engineer, but also allows us to reduce our application’s binary size. Then, when needed, we can use the `.dSYM` file to reversethe process.
