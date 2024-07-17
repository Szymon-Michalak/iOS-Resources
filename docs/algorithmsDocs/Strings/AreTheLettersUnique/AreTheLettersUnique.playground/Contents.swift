// MARK: - Solution

func areTheLettersUnique(in string: String) -> Bool {
    string.count == Set(string).count
}

// MARK: - Tests

assert(areTheLettersUnique(in: "No duplicates") == true, "Test 1 failed")
assert(areTheLettersUnique(in: "abcdefghijklmnopqrstuvwxyz") == true, "Test 2 failed")
assert(areTheLettersUnique(in: "AaBbCc") == true, "Test 3 failed")
assert(areTheLettersUnique(in: "Hello, world") == false, "Test 4 failed")
