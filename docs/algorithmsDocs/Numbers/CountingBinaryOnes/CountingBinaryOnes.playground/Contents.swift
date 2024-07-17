// MARK: - Solution

func nextHighestAndLowestWithSameNumberOfOnes(_ number: Int) -> (Int?, Int?) {
    func countOnes(in number: Int) -> Int {
        let binaryNumber = String(number, radix: 2)
        return binaryNumber.reduce(0) { $1 == "1" ? $0 + 1 : $0 }
    }

    let targetOnes = countOnes(in: number)
    var nextHighest: Int? = nil
    var nextLowest: Int? = nil

    for i in number + 1...Int.max {
        if countOnes(in: i) == targetOnes {
            nextHighest = i
            break
        }
    }

    for i in (0 ..< number).reversed() {
        if countOnes(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }

    return (nextLowest, nextHighest)
}

// MARK: - Tests

assert(nextHighestAndLowestWithSameNumberOfOnes(12) == (10, 17), "Test 1 failed")
assert(nextHighestAndLowestWithSameNumberOfOnes(28) == (26, 35), "Test 2 failed")
