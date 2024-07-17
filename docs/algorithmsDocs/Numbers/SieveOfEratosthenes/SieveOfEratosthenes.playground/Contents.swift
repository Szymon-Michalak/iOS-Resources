// MARK: - Solution
func sieveOfEratosthenes(_ number: Int) -> [Int] {
    var sieve: [Bool] = Array(repeating: true, count: number + 1)

    sieve[0] = false
    sieve[1] = false

    for i in 2...number {
        if sieve[i] {
            for i in stride(from: i * i, to: number + 1, by: i) {
                sieve[i] = false
            }
        }
    }

    return sieve.enumerated().filter { $0.element }.map { $0.offset }
}

// MARK: - Tests
assert(sieveOfEratosthenes(10) == [2, 3, 5, 7], "Test 1 failed")
assert(sieveOfEratosthenes(20) == [2, 3, 5, 7, 11, 13, 17, 19], "Test 2 failed")
assert(sieveOfEratosthenes(50) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47], "Test 3 failed")
assert(sieveOfEratosthenes(2) == [2], "Test 4 failed")
assert(sieveOfEratosthenes(100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], "Test 5 failed")
