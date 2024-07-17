// MARK: - Imports

// MARK: - Solution
extension Collection where Element: Comparable {
    func findNSmallest(_ n: Int) -> [Element] {
        let sorted = self.sorted(by: <)
        guard n<=self.count else { return Array(self) }
        return Array(sorted[0..<n])
    }
}

// MARK: - Tests

// Test 1: [1, 2, 3, 4] with count 3
let result1 = [1, 2, 3, 4].findNSmallest(3)
assert(result1 == [1, 2, 3], "Test 1 failed: Expected [1, 2, 3], got \(result1)")

// Test 2: ["q", "f", "k"] with count 10
let result2 = ["q", "f", "k"].findNSmallest(10)
assert(result2 == ["f", "k", "q"], "Test 2 failed: Expected [\"f\", \"k\", \"q\"], got \(result2)")

// Test 3: [256, 16] with count 3
let result3 = [256, 16].findNSmallest(3)
assert(result3 == [16, 256], "Test 3 failed: Expected [16, 256], got \(result3)")

// Test 4: Empty array of Strings with count 3
let result4 = [String]().findNSmallest(3)
assert(result4.isEmpty, "Test 4 failed: Expected [], got \(result4)")

// MARK: - Tests Helpers
