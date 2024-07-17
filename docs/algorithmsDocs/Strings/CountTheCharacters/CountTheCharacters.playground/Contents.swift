// MARK: - Solution

func countTheCharacters(in string: String, of characterToCount: Character) -> Int {
    var count: Int = 0

    for char in string {
        if char == characterToCount {
            count += 1
        }
    }
    return count
}

func countTheCharactersAlt(in string: String, of characterToCount: Character) -> Int {
    string.filter { $0 == characterToCount }.count
}

func countTheCharactersAlt2(in string: String, of characterToCount: Character) -> Int {
    string.reduce(0) { $1 == characterToCount ? $0 + 1 : $0 }
}

// MARK: - Tests

assert(countTheCharacters(in: "The rain in Spain", of: "a") == 2, "Test 1 failed")
assert(countTheCharacters(in: "Mississippi", of: "i") == 4, "Test 2 failed")
assert(countTheCharacters(in: "Hacking with Swift", of: "i") == 3, "Test 3 failed")

assert(countTheCharactersAlt(in: "The rain in Spain", of: "a") == 2, "Test 1 failed")
assert(countTheCharactersAlt(in: "Mississippi", of: "i") == 4, "Test 2 failed")
assert(countTheCharactersAlt(in: "Hacking with Swift", of: "i") == 3, "Test 3 failed")

assert(countTheCharactersAlt2(in: "The rain in Spain", of: "a") == 2, "Test 1 failed")
assert(countTheCharactersAlt2(in: "Mississippi", of: "i") == 4, "Test 2 failed")
assert(countTheCharactersAlt2(in: "Hacking with Swift", of: "i") == 3, "Test 3 failed")
