// MARK: - Solution
func isRotation(of string1: String, with string2: String) -> Bool {
    guard string1.count == string2.count else { return false }
    let string1Doubled = string1 + string1

    return string1Doubled.contains(string2)
}

// MARK: - Tests
assert(isRotation(of: "abcde", with: "eabcd") == true, "Test 1 failed")
assert(isRotation(of: "abcde", with: "cdeab") == true, "Test 2 failed")
assert(isRotation(of: "abcde", with: "abced") == false, "Test 3 failed")
assert(isRotation(of: "abc", with: "a") == false, "Test 4 failed")
