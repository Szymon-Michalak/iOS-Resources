// MARK: - Imports

import Foundation // FileManager

// MARK: - Solution

func copyDirectory(from source: String, to destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false

    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else { return false }
    let sourceURL = URL(filePath: source)
    let destinationURL = URL(filePath: destination)

    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print("Error copying directory from \(sourceURL.lastPathComponent) to \(destinationURL.lastPathComponent): \(error.localizedDescription)")
        return false
    }
    return true
}

// MARK: - Tests

// Test 1: Copy a sample directory successfully
let sourcePath1 = getTestDirectoryPath()
let destinationPath1 = getTestDirectoryPath()
cleanupDirectory(at: sourcePath1)
cleanupDirectory(at: destinationPath1)
createSampleDirectory(at: sourcePath1)
let copyResult1 = copyDirectory(from: sourcePath1, to: destinationPath1)
assert(copyResult1 == true, "Test 1 failed: Copy should succeed")

// Test 2: Attempt to copy a non-existent directory
let sourcePath2 = getTestDirectoryPath()
let destinationPath2 = getTestDirectoryPath()
cleanupDirectory(at: sourcePath2)
cleanupDirectory(at: destinationPath2)
let copyResult2 = copyDirectory(from: sourcePath2, to: destinationPath2)
assert(copyResult2 == false, "Test 2 failed: Copy should fail for non-existent directory")

// Test 3: Attempt to copy to a non-writable location (simulated by using an invalid path)
let sourcePath3 = getTestDirectoryPath()
let destinationPath3 = "/nonWritableDestination/destinationDirectory3" // An invalid or non-writable path
cleanupDirectory(at: sourcePath3)
cleanupDirectory(at: destinationPath3)
createSampleDirectory(at: sourcePath3)
let copyResult3 = copyDirectory(from: sourcePath3, to: destinationPath3)
assert(copyResult3 == false, "Test 3 failed: Copy should fail for non-writable destination")

// MARK: - Tests helpers

// Helper function to create a sample directory with contents
func createSampleDirectory(at path: String) {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: path)

    do {
        // Create the directory if it does not exist
        if !fileManager.fileExists(atPath: path) {
            try fileManager.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
        }

        // Create some sample files and subdirectories
        let file1 = directoryURL.appendingPathComponent("file1.txt")
        let file2 = directoryURL.appendingPathComponent("file2.txt")
        let subdirectory = directoryURL.appendingPathComponent("subdirectory")
        let file3 = subdirectory.appendingPathComponent("file3.txt")

        try "Content of file1".write(to: file1, atomically: true, encoding: .utf8)
        try "Content of file2".write(to: file2, atomically: true, encoding: .utf8)
        try fileManager.createDirectory(at: subdirectory, withIntermediateDirectories: true, attributes: nil)
        try "Content of file3".write(to: file3, atomically: true, encoding: .utf8)

    } catch {
        print("Error creating sample directory at \(path): \(error)")
    }
}

func cleanupDirectory(at path: String) {
    let fileManager = FileManager.default
    if fileManager.fileExists(atPath: path) {
        do {
            try fileManager.removeItem(atPath: path)
        } catch {
            print("Error cleaning up directory at \(path): \(error)")
        }
    }
}

func getTestDirectoryPath() -> String {
    let fileManager = FileManager.default
    let tempDirectoryURL = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
    return tempDirectoryURL.path
}
