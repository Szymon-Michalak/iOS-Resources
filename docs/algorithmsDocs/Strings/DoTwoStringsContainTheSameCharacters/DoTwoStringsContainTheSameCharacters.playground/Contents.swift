// MARK: - Solution
func doTwoStringsContainTheSameCharacters(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

// MARK: - Tests
assert(doTwoStringsContainTheSameCharacters(string1: "abca", string2: "abca") == true, "Test 1 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "abc", string2: "cba") == true, "Test 2 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "a1 b2", string2: "b1 a2") == true, "Test 3 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "abc", string2: "abca") == false, "Test 4 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "abc", string2: "Abc") == false, "Test 5 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "abc", string2: "cbAa") == false, "Test 6 failed")
assert(doTwoStringsContainTheSameCharacters(string1: "abc", string2: "cbAa") == false, "Test 7 failed")
