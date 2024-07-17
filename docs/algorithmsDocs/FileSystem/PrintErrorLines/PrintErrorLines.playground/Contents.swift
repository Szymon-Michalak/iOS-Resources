// MARK: - Imports
import Foundation // FileManager, FileHandle, String

// MARK: - Solution

// Function to count lines starting with "[ERROR]"
func countErrorLines(in filePath: String) -> Int {
    let fileManager = FileManager.default
    guard fileManager.fileExists(atPath: filePath) else {
        return 0
    }

    do {
        let fileHandle = try FileHandle(forReadingFrom: URL(fileURLWithPath: filePath))
        defer { fileHandle.closeFile() }

        var errorLineCount = 0
        while let lineData = fileHandle.readLine() {
            if String(data: lineData, encoding: .utf8)?.hasPrefix("[ERROR]") == true {
                errorLineCount += 1
            }
        }

        return errorLineCount
    } catch {
        return 0
    }
}

// MARK: - Tests

// Test 1: Log file with two error lines
let logFilePath1 = FileManager.default.temporaryDirectory.appendingPathComponent("logfile1.log").path
createLogFile(at: logFilePath1, withContent: """
[INFO] Information message
[ERROR] Error message 1
[INFO] Another information message
[ERROR] Error message 2
""")
let errorCount1 = countErrorLines(in: logFilePath1)
assert(errorCount1 == 2, "Test 1 failed: Expected 2 error lines, got \(errorCount1)")

// Test 2: Log file with no error lines
let logFilePath2 = FileManager.default.temporaryDirectory.appendingPathComponent("logfile2.log").path
createLogFile(at: logFilePath2, withContent: """
[INFO] Information message
[INFO] Another information message
""")
let errorCount2 = countErrorLines(in: logFilePath2)
assert(errorCount2 == 0, "Test 2 failed: Expected 0 error lines, got \(errorCount2)")

// Test 3: Nonexistent log file
let logFilePath3 = FileManager.default.temporaryDirectory.appendingPathComponent("nonexistent.log").path
let errorCount3 = countErrorLines(in: logFilePath3)
assert(errorCount3 == 0, "Test 3 failed: Expected 0 error lines, got \(errorCount3)")


// MARK: - Tests helpers

// Helper function to create a log file with specific content
func createLogFile(at path: String, withContent content: String) {
    do {
        try content.write(toFile: path, atomically: true, encoding: .utf8)
    } catch {
        print("Error creating log file at \(path): \(error)")
    }
}

// Extension to FileHandle to read lines
extension FileHandle {
    func readLine() -> Data? {
        var lineData = Data()
        while true {
            let data = self.readData(ofLength: 1)
            if data.isEmpty {
                return lineData.isEmpty ? nil : lineData
            } else {
                lineData.append(data)
                if data == "\n".data(using: .utf8) {
                    return lineData
                }
            }
        }
    }
}
