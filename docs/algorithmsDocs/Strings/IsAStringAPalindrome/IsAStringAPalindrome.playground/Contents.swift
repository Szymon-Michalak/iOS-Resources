// MARK: - Solution
func isAStringAPalindrome(_ string: String) -> Bool {
    let lowercased = string.lowercased()
    return String(lowercased.reversed()) == lowercased
}

// MARK - Tests
assert(isAStringAPalindrome("rotator") == true, "Test 1 failed")
assert(isAStringAPalindrome("Rats live on no evil star") == true, "Test 2 failed")
assert(isAStringAPalindrome("Never odd or even") == false, "Test 3 failed")
assert(isAStringAPalindrome("Hello, world") == false, "Test 4 failed")
