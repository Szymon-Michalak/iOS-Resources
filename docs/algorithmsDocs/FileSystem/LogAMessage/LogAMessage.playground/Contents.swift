// MARK: - Imports
import Foundation // FileManager, String(contentsOfFile:)

// MARK: - Solution
func logMessage(path: String, message: String) {
    var existingLog = (try? String(contentsOfFile: path, encoding: .utf8)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    do {
        try existingLog.write(toFile: path, atomically: true, encoding: .utf8)
    } catch {
        print("Error writing to file \(path): \(error)")
    }

}

// MARK: - Tests

// Test 1: Check if the function creates a new file and appends the message
let testPath1 = "logfile.txt"
clearLogFile(path: testPath1)
logMessage(path: testPath1, message: "New log entry")
if let logContent1 = readLogFile(path: testPath1) {
    assert(logContent1.contains("New log entry"), "Test 1 failed")
}

// Test 2: Check if the function appends a message to an existing file
let testPath2 = "logfile.txt"
clearLogFile(path: testPath2)
logMessage(path: testPath2, message: "First log entry")
logMessage(path: testPath2, message: "Second log entry")
if let logContent2 = readLogFile(path: testPath2) {
    assert(logContent2.contains("First log entry"), "Test 2a failed")
    assert(logContent2.contains("Second log entry"), "Test 2b failed")
}

// Test 3: Check if the function handles proper line breaks
let testPath3 = "logfile.txt"
clearLogFile(path: testPath3)
logMessage(path: testPath3, message: "Entry one")
logMessage(path: testPath3, message: "Entry two")
if let logContent3 = readLogFile(path: testPath3) {
    assert(logContent3.contains("Entry one\n"), "Test 3a failed")
    assert(logContent3.contains("Entry two\n"), "Test 3b failed")
}

// Helper test functions
// Function to read the content of the log file
func readLogFile(path: String) -> String? {
    do {
        return try String(contentsOfFile: path, encoding: .utf8)
    } catch {
        print("Error reading file \(path): \(error)")
        return nil
    }
}

// Function to clear the content of the log file
func clearLogFile(path: String) {
    let fileManager = FileManager.default
    if fileManager.fileExists(atPath: path) {
        do {
            try "".write(toFile: path, atomically: true, encoding: .utf8)
        } catch {
            print("Error clearing file \(path): \(error)")
        }
    }
}
