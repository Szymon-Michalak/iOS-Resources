// MARK: - Solution
func subtractWithoutSubtract(subtract number1: Int, from number2: Int) -> Int {
    let subtracted = number2 + (~number1 + 1)

    return subtracted
}

// MARK: - Tests
assert(subtractWithoutSubtract(subtract: 5, from: 9) == 4, "Test 1 failed")
assert(subtractWithoutSubtract(subtract: 10, from: 30) == 20, "Test 2 failed")
