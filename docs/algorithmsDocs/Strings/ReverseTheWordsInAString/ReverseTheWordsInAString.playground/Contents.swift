// MARK: - Imports
import Foundation // String.components(separatedBy:)

// MARK: - Solution
func reverseWords(in string: String) -> String {
    let strArray = string.components(separatedBy: " ")
    let reversedWords = strArray.map { String($0.reversed()) }
    let reversedWordsString = reversedWords.joined(separator: " ")
    return reversedWordsString
}

// MARK: - Tests
assert(reverseWords(in: "Swift Coding Challenges") == "tfiwS gnidoC segnellahC", "Test 1 failed")
assert(reverseWords(in: "The quick brown fox") == "ehT kciuq nworb xof", "Test 2 failed")
