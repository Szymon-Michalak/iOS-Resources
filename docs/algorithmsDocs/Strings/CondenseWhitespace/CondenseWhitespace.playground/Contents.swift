// MARK: - Imports

import Foundation // .replacingOccurrences(of: , with: , options: , range: )

// MARK: - Solution

func condenseWhitespace(in string: String) -> String {
    return string.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

func condenseWhitespaceAlt(in string: String) -> String {
    var seenSpace = false
    var returnString = ""

    for letter in string {
        if letter == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        returnString.append(letter)
    }

    return returnString
}

// MARK: - Tests

assert(condenseWhitespace(in: "a   b   c") == "a b c", "Test 1 failed")
assert(condenseWhitespace(in: "    a") == " a", "Test 2 failed")
assert(condenseWhitespace(in: "abc") == "abc", "Test 3 failed")

assert(condenseWhitespaceAlt(in: "a   b   c") == "a b c", "Test 1 failed")
assert(condenseWhitespaceAlt(in: "    a") == " a", "Test 2 failed")
assert(condenseWhitespaceAlt(in: "abc") == "abc", "Test 3 failed")
