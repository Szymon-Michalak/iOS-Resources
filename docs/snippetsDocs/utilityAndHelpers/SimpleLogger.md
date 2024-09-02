---
title: Simple Logger
description: This snippet demonstrates how to create a custom logging utility in Swift, supporting different severity levels and providing context information.
---

This snippet demonstrates how to create a custom logging utility in Swift, supporting different severity levels and providing context information.

<details>

**URL:** https://gist.github.com/aryamansharda/d153667b25e03eef9b0ac71de43e801b#file-log-swift

**Source:** [Ace the iOS Interview](/docs/resourcesDocs/books/AceTheiOSInterview.md)

**Author:** `Aryaman Sharda`

**Tags:**  
`Swift`, `Logging`, `Debugging`

**Platforms Supported:** iOS, macOS

**Swift Version:** 5.0 and above
</details>

### Key Points
- Supports multiple severity levels (info, warning, error).
- Provides context information (file name, function name, line number).
- Uses compiler directives to ensure logging only in debug mode.

### Use Cases
- Enhancing debugging by providing detailed log messages.
- Differentiating log messages by severity level.
- Avoiding logging sensitive information in production builds.

### Alternative Approaches
- Using third-party logging frameworks like CocoaLumberjack.
- Implementing logging with OSLog for performance and privacy.
- Utilizing external logging services for advanced log management.

### Performance Considerations
- Using compiler directives to avoid logging in production improves performance.
- Context-aware logging helps in identifying issues faster during development.
- Minimal overhead due to selective logging based on build configurations.

### Code

```swift
import Foundation

enum LogLevel {
    case info
    case warning
    case error
    
    fileprivate var prefix: String {
        switch self {
        case .info: return "INFO"
        case .warning: return "WARN ⚠"
        case .error: return "ALERT ❌"
        }
    }
}

struct Context {
    let file: String
    let function: String
    let line: Int
    
    var description: String {
        "\((file as NSString).lastPathComponent):\(line) \(function)"
    }
}

enum Log {
    static func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .warning, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        handleLog(level: .error, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    fileprivate static func handleLog(level: LogLevel, str: String, shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)]", str]
        var fullString = logComponents.joined(separator: " ")
        
        if shouldLogContext {
            fullString += " ➜ \(context.description)"
        }
        
        #if DEBUG
        print(fullString)
        #endif
    }
}
```

### Related Snippets
- [Custom Debugging and Logging with OSLog](#)
- [Using CocoaLumberjack for Advanced Logging](#)

### References
- [Apple's Official Documentation on Debugging](https://developer.apple.com/documentation/xcode/debugging)
- [Using OSLog for Logging](https://developer.apple.com/documentation/os/oslog)

<LinkCard title="Read Full Snippet" href="https://gist.github.com/aryamansharda/d153667b25e03eef9b0ac71de43e801b#file-log-swift" />
