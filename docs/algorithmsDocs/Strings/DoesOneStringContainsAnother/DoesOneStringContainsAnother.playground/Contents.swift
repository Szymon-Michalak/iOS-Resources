// MARK: - Imports
import Foundation // range(of: )

// MARK: - Solution
extension String {
    func fuzzyContain(_ string: String) -> Bool {
        let lowercasedSelf = self.lowercased()
        let lowercasedString = string.lowercased()
        return lowercasedSelf.range(of: lowercasedString) != nil
    }

    func fuzzyContainAlt(_ string: String) -> Bool {
        self.range(of: string, options: .caseInsensitive) != nil
    }
}

// MARK: - Tests
assert("Hello, world".fuzzyContain("Hello") == true, "Test 1 failed")
assert("Hello, world".fuzzyContain("WORLD") == true, "Test 2 failed")
assert("Hello, world".fuzzyContain("Goodbye") == false, "Test 3 failed")

assert("Hello, world".fuzzyContainAlt("Hello") == true, "Test 1 failed")
assert("Hello, world".fuzzyContainAlt("WORLD") == true, "Test 2 failed")
assert("Hello, world".fuzzyContainAlt("Goodbye") == false, "Test 3 failed")
