---
slug: HowDoYouCreateInteroperabilityBetweenObjectiveCAndSwift
title: How do you create interoperability between Objective-C and Swift?
authors: [szymon]
tags: [general]
---


If you’re applying for an older company like YouTube, Facebook, or even Google, you’ll likely have to work with both Objective-C and Swift within the same project.

As part of that workflow, it’s useful to know how to expose variables, classes, and methods declared in Swift to the Objective-C runtime and vice-versa.

**Exposing Objective-C to Swift**
To import a set of Objective-C files into Swift code within the same app target, you rely on an Objective-C Bridging Header file to expose those files to Swift. Xcode offers to create this header for you when you add a Swift file to an existing Objective-C app or an Objective-C file to an existing Swift app.

When you accept, Xcode creates the Bridging Header file and names it by using your product module’s name followed by "-Bridging-Header.h" (e.x.“Facebook-Bridging-Header.h”).

In your newly created Bridging Header file, you can specify all of the Objective-C headers you want to expose to Swift like this:

```objectivec
#import "Properties.h"
#import "Auth.h"
```

Now, these Objective-C entities are automatically available in any Swift file within the same target without the use of any additional `import` statements.

**Exposing Swift to Objective-C**
Now, what if you wrote a cool extension in Swift that you want to have access to in Objective-C?

You can work with types declared in Swift from within the Objective-C code in your project by importing an Xcode-generated header file (e.x. “ProductModuleName-Swift.h").This file is an Objective-C header that declares the Swift interfaces in your target.

You don’t need to do anything special to use the generated header - just import it in the Objective-C classes as needed:

```objectivec
#import "ProductModuleName-Swift.h"
```

This header file is managed behind the scenes. As a result, you don’t need to specify each individual class you want to expose to Objective-C like we did in the previous section.

You can think of it as an umbrella header for all of your Swift code.

By default, the generated header contains interfaces for Swift declarations marked with the `public` or `open` modifier. If your app target has an Objective-C bridging header, the generated header also includes interfaces for resources marked with the `internal` modifier. Declarations marked with the `private` or `fileprivate` modifier don'tappear in the generated header and aren't exposed to the Objective-C runtime unless they are explicitly marked with a `@IBAction`, `@IBOutlet`, or `@objcattribute`.
