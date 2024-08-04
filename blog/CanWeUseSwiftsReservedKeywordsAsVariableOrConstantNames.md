---
slug: CanWeUseSwiftsReservedKeywordsAsVariableOrConstantNames
title: Can we use Swift’s reserved keywords as variable or constant names?
authors: [szymon]
tags: [swift]
---

Yes! This makes our code much easier to read and it’s accomplished through the use of backticks.

If you want to use a reserved keyword, for example as acasein anenum, you can just add backticks around the reserved keyword:

```swift
enum MembershipType {
    case `default`
    case premium
    case trial
}

// Free to use MembershipType.default now
```

Otherwise, without the backticks, we’d have a compilation issue.
