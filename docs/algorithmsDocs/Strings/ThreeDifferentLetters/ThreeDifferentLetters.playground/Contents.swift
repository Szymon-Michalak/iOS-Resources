// MARK: - Solution
func areWithinThreeEdits(_ string1: String, _ string2: String) -> Bool {
    guard string1.count == string2.count else { return false }

    var countEdits = 0
    var string1 = string1
    var string2 = string2

    for i in 0..<string1.count {
        if string1.removeFirst() != string2.removeFirst() { countEdits += 1 }
        if countEdits > 3 { return false }
    }

    return true
}

// MARK: - Tests

assert(areWithinThreeEdits("Clamp", "Cramp") == true, "Test 1 failed")
assert(areWithinThreeEdits("Clamp", "Crams") == true, "Test 2 failed")
assert(areWithinThreeEdits("Clamp", "Grams") == true, "Test 3 failed")
assert(areWithinThreeEdits("Clamp", "Grans") == false, "Test 4 failed")
assert(areWithinThreeEdits("Clamp", "Clam") == false, "Test 5 failed")
assert(areWithinThreeEdits("clamp", "maple") == false, "Test 6 failed")
