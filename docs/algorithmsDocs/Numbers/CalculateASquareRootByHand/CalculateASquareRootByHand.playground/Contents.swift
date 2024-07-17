// MARK: - Solution

func integerSquareRoot(of number: Int) -> Int {
    guard number != 1 else { return 1 }

    var lowerBound = 1
    var upperBound = number / 2 + 1

    while lowerBound + 1 < upperBound {
        let middle = lowerBound + (upperBound - lowerBound) / 2
        let middleSquared = middle * middle

        if middleSquared == number {
            return middle
        }
        if middleSquared > number {
            upperBound = middle
        } else {
            lowerBound = middle
        }
    }

    return lowerBound
}

// MARK: - Tests

assert(integerSquareRoot(of: 9) == 3, "Test 1 failed")
assert(integerSquareRoot(of: 16777216) == 4096, "Test 2 failed")
assert(integerSquareRoot(of: 16) == 4, "Test 3 failed")
assert(integerSquareRoot(of: 15) == 3, "Test 4 failed")
