---
slug: HowWouldWeTestThePerformanceOfAMethodInOurTests
title: How would we test the performance of a method in our tests?
authors: [szymon]
tags: [testing]
---


TheXCTestframework includes a `measure()` function for profiling code execution times. We can call this method within our testing target to measure the performance of a block of code:

```swift
func testExample() throws {
    measure {
        sayHelloWorld()
    }
}
```

By default, this method counts the number of seconds it takes to execute a block of code.

To customize the metrics `measure()` function tracks, we can override
`defaultPerformanceMetrics[]` and specify our own metrics to track.

The `measure()` function runs the code within the closure ten times and reports the average execution time and standard deviation. These numbers will now serve as the benchmarks for all future runs of this test.

On a subsequent run, if the execution time is within 10% of the benchmark value, the test will pass. Otherwise, the test will fail. This can help us catch performance problems early on in the development process.

If we were to improve the performance of the code we're profiling, we can simply update the baseline measurement, and now all subsequent executions will be compared against this new value.

Xcode saves benchmark numbers into source control which allows them to be standardized across teams.

Finally, the benchmark numbers are device-specific. This ensures that Xcode will not fail the test when the iPhone 6 performs worse than the iPhone 13.
