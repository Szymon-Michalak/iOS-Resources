// MARK: - Imports
import Foundation

// MARK: - Solution
func isPrime(_ number: Int) -> Bool {
    guard number > 0 else { return false }
    if number == 2 { return true }

    let upperBound = Int(Double(number).squareRoot())
    for i in 2...upperBound {
        if number.isMultiple(of: i) {
            return false
        }
    }

    return true
}

// MARK: - Tests
assert(isPrime(11) == true, "Test 1 failed")
assert(isPrime(13) == true, "Test 2 failed")
assert(isPrime(4) == false, "Test 3 failed")
assert(isPrime(9) == false, "Test 4 failed")
assert(isPrime(16777259) == true, "Test 5 failed")
