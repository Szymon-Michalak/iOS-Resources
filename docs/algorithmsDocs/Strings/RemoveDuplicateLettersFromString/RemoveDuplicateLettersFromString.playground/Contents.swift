// MARK: - Imports
import Foundation

// MARK: - Solution
func removeDuplicateLettersFromString(from string: String) -> String {
    let array = Array(string)
    let orderedSet = NSOrderedSet(array: array)
    let characters = orderedSet.array as! [Character]
    return String(characters)
}

func removeDuplicateLettersFromStringAlt(from string: String) -> String {
    var uniqueCharacters = Set<Character>()
    var stringWithoutDuplicates = string.filter { !uniqueCharacters.contains($0) ? uniqueCharacters.insert($0).0 : false }
    return stringWithoutDuplicates
}

// MARK: - Tests

assert(removeDuplicateLettersFromString(from: "wombat") == "wombat", "Test 1 failed")
assert(removeDuplicateLettersFromString(from: "hello") == "helo", "Test 2 failed")
assert(removeDuplicateLettersFromString(from: "Mississippi") == "Misp", "Test 3 failed")
assert(removeDuplicateLettersFromString(from: "") == "", "Test 4 failed")

assert(removeDuplicateLettersFromStringAlt(from: "wombat") == "wombat", "Test 1 failed")
assert(removeDuplicateLettersFromStringAlt(from: "hello") == "helo", "Test 2 failed")
assert(removeDuplicateLettersFromStringAlt(from: "Mississippi") == "Misp", "Test 3 failed")
assert(removeDuplicateLettersFromStringAlt(from: "") == "", "Test 4 failed")
