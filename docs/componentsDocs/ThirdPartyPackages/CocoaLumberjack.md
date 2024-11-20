---
title: "CocoaLumberjack"
description: "A versatile and fast logging framework for macOS, iOS, tvOS, and watchOS."
sidebar_label: "CocoaLumberjack"
---

The **CocoaLumberjack** framework is a powerful and flexible logging library for Apple platforms. Known for its speed and configurability, CocoaLumberjack provides advanced features for application logging, making it an essential tool for debugging and monitoring.

<details>

**Repository URL:** [CocoaLumberjack on GitHub](https://github.com/CocoaLumberjack/CocoaLumberjack)

**Documentation:** [Official Documentation](https://github.com/CocoaLumberjack/CocoaLumberjack/blob/master/README.md)

**Authors:** CocoaLumberjack Team

**Tags:**  
`logging`, `debugging`, `performance`, `iOS`, `macOS`, `tvOS`, `watchOS`

</details>

## Features
- **High performance**: Optimized for logging in real-time applications.
- **Flexible configuration**: Support for multiple log levels, contexts, and destinations.
- **Asynchronous logging**: Keeps logging non-blocking to preserve app performance.
- **Customizable log formats**: Easily define log output formats.
- **Cross-platform support**: Works seamlessly across macOS, iOS, tvOS, and watchOS.

## Installation

### Using Swift Package Manager (SPM)

1. Open your project in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste the repository URL:  
   `https://github.com/CocoaLumberjack/CocoaLumberjack`
4. Choose your desired version and click "Add Package".

Alternatively, add it directly to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", from: "3.8.0")
]
```

## Basic Usage

### 1. **Setting up CocoaLumberjack**
Import and configure the logging framework in your application.

```swift
import CocoaLumberjackSwift

DDLog.add(DDTTYLogger.sharedInstance!) // Log to Xcode console
DDLog.add(DDASLLogger.sharedInstance!) // Log to Apple System Logger
```

### 2. **Logging Messages**
Log messages at different levels using `DDLog`.

```swift
DDLogVerbose("Verbose log message")
DDLogDebug("Debug log message")
DDLogInfo("Info log message")
DDLogWarn("Warning log message")
DDLogError("Error log message")
```

### 3. **Custom Loggers**
Define custom loggers or modify existing ones for specific needs.

```swift
class CustomLogger: DDAbstractLogger {
    override func log(message: DDLogMessage) {
        print("Custom log: \(message.message)")
    }
}

DDLog.add(CustomLogger())
```

## Advantages
- **Performance**: Asynchronous logging ensures minimal performance overhead.
- **Scalability**: Suitable for apps with high logging demands.
- **Customizability**: Tailor loggers, formats, and log levels for different environments.
- **Debugging Support**: Enhances debugging and troubleshooting with detailed logs.

## Resources
- [GitHub Repository](https://github.com/CocoaLumberjack/CocoaLumberjack)
- [Sample Projects](https://github.com/CocoaLumberjack/CocoaLumberjack/tree/master/Examples)

<LinkCard title="Explore CocoaLumberjack" href="https://github.com/CocoaLumberjack/CocoaLumberjack" />
