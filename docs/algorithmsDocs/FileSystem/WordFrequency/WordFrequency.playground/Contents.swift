// MARK: - Imports
import Foundation // FileManager, String(contentsOfFile:)

// MARK: - Solution
func wordFrequency(in filePath: String, word: String) -> Int {
    guard let inputString = try? String(contentsOfFile: filePath) else { return 0 }
    
    var nonLetters = CharacterSet.alphanumerics.inverted
    nonLetters.remove("’")

    let allWords = inputString.components(separatedBy: nonLetters)
    let frequency = allWords.filter { $0 == word }.count

    return frequency
}

// MARK: - Tests
// Test 1: Frequency of "Hello" in "Hello, world!"
let filePath1 = FileManager.default.temporaryDirectory.appendingPathComponent("file1.txt").path
createFile(withContent: "Hello, world!", at: filePath1)
let frequency1 = wordFrequency(in: filePath1, word: "Hello")
assert(frequency1 == 1, "Test 1 failed: Expected 1 but got \(frequency1)")

// Test 2: Frequency of "Hello," in "Hello, world!"
let frequency2 = wordFrequency(in: filePath1, word: "Hello,")
assert(frequency2 == 0, "Test 2 failed: Expected 0 but got \(frequency2)")

// Test 3: Frequency of "Spain" in "The rain in Spain falls mainly on the plain"
let filePath3 = FileManager.default.temporaryDirectory.appendingPathComponent("file3.txt").path
createFile(withContent: "The rain in Spain falls mainly on the plain", at: filePath3)
let frequency3 = wordFrequency(in: filePath3, word: "Spain")
assert(frequency3 == 1, "Test 3 failed: Expected 1 but got \(frequency3)")

// Test 4: Frequency of "in" in "The rain in Spain falls mainly on the plain"
let frequency4 = wordFrequency(in: filePath3, word: "in")
assert(frequency4 == 1, "Test 4 failed: Expected 1 but got \(frequency4)")

// Test 5: Frequency of "I’m" in "I’m a great coder"
let filePath5 = FileManager.default.temporaryDirectory.appendingPathComponent("file5.txt").path
createFile(withContent: "I’m a great coder", at: filePath5)
let frequency5 = wordFrequency(in: filePath5, word: "I’m")
assert(frequency5 == 1, "Test 5 failed: Expected 1 but got \(frequency5)")

// MARK: - Test helper functions
// Helper function to create a file with specified content
func createFile(withContent content: String, at path: String) {
    do {
        try content.write(toFile: path, atomically: true, encoding: .utf8)
    } catch {
        print("Error creating file at \(path): \(error)")
    }
}
