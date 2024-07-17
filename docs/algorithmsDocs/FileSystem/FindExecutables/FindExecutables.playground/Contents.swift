// MARK: - Imports
import Foundation // FileManager

// MARK: - Solution
func findExecutables(in directoryPath: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)
    var executables: [String] = []

    do {
        let files = try fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: [.isExecutableKey], options: [.skipsHiddenFiles, .skipsSubdirectoryDescendants])
        for file in files {
            let isExecutable = (try file.resourceValues(forKeys: [.isExecutableKey]).isExecutable) ?? false
            if isExecutable {
                executables.append(file.lastPathComponent)
            }
        }
    } catch {
        print("Error reading contents of directory \(directoryPath): \(error)")
    }

    return executables
}

// MARK: - Tests

// Test 1: Find executable files in a sample directory
let testDirectoryPath1 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory1").path
createSampleDirectoryWithExecutables(at: testDirectoryPath1)
let executables1 = findExecutables(in: testDirectoryPath1)
assert(executables1.contains("exec1"), "Test 1 failed: Expected 'exec1' to be in the list of executables")
assert(executables1.contains("exec2"), "Test 1 failed: Expected 'exec2' to be in the list of executables")
assert(!executables1.contains("execInSubdir"), "Test 1 failed: 'execInSubdir' should not be in the list of executables")
assert(!executables1.contains("nonExec.txt"), "Test 1 failed: 'nonExec.txt' should not be in the list of executables")

// Test 2: No executables in an empty directory
let testDirectoryPath2 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory2").path
let fileManager = FileManager.default
try? fileManager.createDirectory(atPath: testDirectoryPath2, withIntermediateDirectories: true, attributes: nil)
let executables2 = findExecutables(in: testDirectoryPath2)
assert(executables2.isEmpty, "Test 2 failed: Expected no executables in an empty directory")

// Test 3: No executables when all files are non-executable
let testDirectoryPath3 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory3").path
try? fileManager.createDirectory(atPath: testDirectoryPath3, withIntermediateDirectories: true, attributes: nil)
let nonExecFilePath = testDirectoryPath3 + "/nonExecFile.txt"
createFile(at: nonExecFilePath)
let executables3 = findExecutables(in: testDirectoryPath3)
assert(executables3.isEmpty, "Test 3 failed: Expected no executables when all files are non-executable")


// MARK: - Tests helpers

// Helper function to create an executable file at a specified path
func createExecutableFile(at path: String) {
    let fileManager = FileManager.default
    let fileURL = URL(fileURLWithPath: path)
    let content = """
    #!/bin/bash
    echo "Hello, world!"
    """
    do {
        try content.write(to: fileURL, atomically: true, encoding: .utf8)
        try fileManager.setAttributes([.posixPermissions: 0o755], ofItemAtPath: path)
    } catch {
        print("Error creating executable file at \(path): \(error)")
    }
}

// Helper function to create a sample directory structure with executable and non-executable files
func createSampleDirectoryWithExecutables(at path: String) {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: path)

    do {
        // Create the base directory
        if !fileManager.fileExists(atPath: path) {
            try fileManager.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
        }

        // Create executable files
        createExecutableFile(at: directoryURL.appendingPathComponent("exec1").path)
        createExecutableFile(at: directoryURL.appendingPathComponent("exec2").path)

        // Create non-executable files
        let nonExecutableContent = "This is a text file."
        let nonExecFile = directoryURL.appendingPathComponent("nonExec.txt")
        try nonExecutableContent.write(to: nonExecFile, atomically: true, encoding: .utf8)

        // Create a subdirectory with executable files (these should not be included in the result)
        let subdirectory = directoryURL.appendingPathComponent("subdir")
        try fileManager.createDirectory(at: subdirectory, withIntermediateDirectories: true, attributes: nil)
        createExecutableFile(at: subdirectory.appendingPathComponent("execInSubdir").path)

    } catch {
        print("Error creating sample directory at \(path): \(error)")
    }
}

// Helper function to create a file at a specified path
func createFile(at path: String) {
    do {
        let content = "Sample content"
        try content.write(toFile: path, atomically: true, encoding: .utf8)
    } catch {
        print("Error creating file at \(path): \(error)")
    }
}
