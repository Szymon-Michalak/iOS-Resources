// MARK: - Imports

// MARK: - Solution
extension Collection where Element == Int {
    func countNumber(count number: Character) -> Int {
        let total = self.reduce(0) { $0 + String($1).filter { (char: Character) -> Bool in char == number }.count }
        return total
    }
}

// MARK: - Tests

// Test 1: Log file with two error lines
let test1Collection = [5, 15, 55, 515]
let test1Count = test1Collection.countNumber(count: "5")
assert(test1Count == 6, "Test 1 failed: Expected 6, got \(test1Count)")

// Test 2: Log file with two error lines
let test2Collection = [5, 15, 55, 515]
let test2Count = test2Collection.countNumber(count: "5")
assert(test2Count == 6, "Test 1 failed: Expected 6, got \(test2Count)")

// Test 3: Log file with two error lines
let test3Collection = [5, 15, 55, 515]
let test3Count = test3Collection.countNumber(count: "5")
assert(test3Count == 6, "Test 1 failed: Expected 6, got \(test3Count)")

// Test 4: Log file with two error lines
let test4Collection = [5, 15, 55, 515]
let test4Count = test4Collection.countNumber(count: "5")
assert(test4Count == 6, "Test 1 failed: Expected 6, got \(test4Count)")

// MARK: - Tests Helpers
