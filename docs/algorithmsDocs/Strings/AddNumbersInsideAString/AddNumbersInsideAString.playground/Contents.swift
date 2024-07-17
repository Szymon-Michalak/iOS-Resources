// MARK: - Imports

import Foundation

// MARK: - Solution

func sumOfNumbers(in string: String) -> Int {
    var numbers = string.components(separatedBy: CharacterSet.decimalDigits.inverted).compactMap { Int($0) }

    return numbers.reduce(0, +)
}

// MARK: - Tests

assert(sumOfNumbers(in: "a1b2c3") == 6, "Test 1 failed")
assert(sumOfNumbers(in: "a10b20c30") == 60, "Test 2 failed")
assert(sumOfNumbers(in: "h8ers") == 8, "Test 3 failed")
