// MARK: - Imports
import Foundation // String.components(separatedBy: )

// MARK: - Solution
func longestCommonPrefix(in string: String) -> String {
    var words = string.components(separatedBy: " ")
    var commonPrefix = ""
    var prefix = ""

    for i in 0..<words[0].count {
        prefix = String(words[0].prefix(i + 1))
        for word in words {
            guard word.hasPrefix(prefix) else { return commonPrefix}
        }
        commonPrefix = prefix
    }

    return prefix
}

// MARK: - Tests
assert(longestCommonPrefix(in: "swift switch swill swim") == "swi", "Test 1 failed")
assert(longestCommonPrefix(in: "flip flap flop") == "fl", "Test 2 failed")

