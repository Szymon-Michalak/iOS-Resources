// MARK: - Solution
func countVowelsAndConsonants(in string: String) -> (Int, Int) {
    let vowels = Set("aeiou")
    let consonants = Set("bcdfghjklmnpqrstvwxyz")

    var count: (Int, Int) = (0, 0)
    let lowercased = string.lowercased()
    for letter in lowercased {
        if vowels.contains(letter) { count.0 += 1 }
        if consonants.contains(letter) { count.1 += 1 }
    }

    return count
}

// MARK: - Tests
assert(countVowelsAndConsonants(in: "Swift Coding Challenges") == (6, 15), "Test 1 failed")
assert(countVowelsAndConsonants(in: "Mississippi") == (4, 7), "Test 2 failed")
