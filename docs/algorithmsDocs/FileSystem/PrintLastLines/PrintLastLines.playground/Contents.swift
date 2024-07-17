// MARK: - Imports
import Foundation // String(contentsOfFile:)

// MARK: - Solution
func printLastLines(filename: String, lineCount: Int) -> String {
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "txt") else { return "" }
    guard let input = try? String(contentsOf: fileURL, encoding: String.Encoding.utf8) else { return "" }

    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return "" }

    lines.reverse()
    var output = [String]()

    for i in 0 ..< min(lines.count, lineCount) {
        output.append(lines[i])
    }
    return output.joined(separator: ", ")
}

// MARK: - Tests
assert(printLastLines(filename: "inputFile", lineCount: 3) == "Twelfth Night, Othello, Macbeth", "Test 1 failed")
assert(printLastLines(filename: "inputFile", lineCount: 100) == "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony And Cleopatra", "Test 2 failed")
assert(printLastLines(filename: "inputFile", lineCount: 0) == "", "Test 3 failed")
