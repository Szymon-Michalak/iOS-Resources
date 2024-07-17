// MARK: - Solution
func isPangram(_ string: String) -> Bool {
    let alphabet = Set("abcdefghijklmnopqrstuvwxyz")
    let stringSet = Set(string.lowercased().filter { $0.isLetter })

    return alphabet == stringSet
}

// MARK: - Tests
assert(isPangram("The quick brown fox jumps over the lazy dog") == true, "Test 1 failed")
assert(isPangram("The quick brown fox jumped over the lazy dog") == false, "Test 2 failed")
