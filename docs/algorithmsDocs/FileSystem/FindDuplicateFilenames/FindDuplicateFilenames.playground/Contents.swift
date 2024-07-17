// MARK: - Imports
import Foundation // FileManager

// MARK: - Solution
func findDuplicateFilenames(in directoryPath: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(filePath: directoryPath)

    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }

    var seenFiles = Set<String>()
    var duplicateFiles = Set<String>()

    for case let file as URL in files {
        guard !file.hasDirectoryPath else { continue }

        let fileName = file.lastPathComponent

        if seenFiles.contains(fileName) {
            duplicateFiles.insert(fileName)
        }

        seenFiles.insert(fileName)
    }

    return Array(duplicateFiles)
}

// MARK: - Tests
// Test 1: Find duplicate filenames in a sample directory structure
let testDirectoryPath1 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory1").path
createSampleDirectoryStructure(at: testDirectoryPath1)
let duplicates1 = findDuplicateFilenames(in: testDirectoryPath1)
assert(duplicates1.contains("a.txt"), "Test 1 failed: Expected 'a.txt' to be in the list of duplicates")
assert(duplicates1.contains("b.txt"), "Test 1 failed: Expected 'b.txt' to be in the list of duplicates")

// Test 2: No duplicates in an empty directory
let testDirectoryPath2 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory2").path
let fileManager = FileManager.default
try? fileManager.createDirectory(atPath: testDirectoryPath2, withIntermediateDirectories: true, attributes: nil)
let duplicates2 = findDuplicateFilenames(in: testDirectoryPath2)
assert(duplicates2.isEmpty, "Test 2 failed: Expected no duplicates in an empty directory")

// Test 3: No duplicates when all filenames are unique
let testDirectoryPath3 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory3").path
try? fileManager.createDirectory(atPath: testDirectoryPath3, withIntermediateDirectories: true, attributes: nil)
createFile(at: "\(testDirectoryPath3)/unique1.txt")
createFile(at: "\(testDirectoryPath3)/unique2.txt")
let duplicates3 = findDuplicateFilenames(in: testDirectoryPath3)
assert(duplicates3.isEmpty, "Test 3 failed: Expected no duplicates when all filenames are unique")

// MARK: - Tests helpers

// Helper function to create a file at a specified path
func createFile(at path: String) {
    do {
        let content = "Sample content"
        try content.write(toFile: path, atomically: true, encoding: .utf8)
    } catch {
        print("Error creating file at \(path): \(error)")
    }
}

// Helper function to create a sample directory structure with duplicate filenames
func createSampleDirectoryStructure(at path: String) {
    let fileManager = FileManager.default
    let baseDirectoryURL = URL(fileURLWithPath: path)

    do {
        // Create the base directory
        if !fileManager.fileExists(atPath: path) {
            try fileManager.createDirectory(at: baseDirectoryURL, withIntermediateDirectories: true, attributes: nil)
        }

        // Create subdirectories and files
        let subdirectory1 = baseDirectoryURL.appendingPathComponent("subdir1")
        let subdirectory2 = baseDirectoryURL.appendingPathComponent("subdir2")
        let subdirectory3 = baseDirectoryURL.appendingPathComponent("subdir2/subdir3")

        try fileManager.createDirectory(at: subdirectory1, withIntermediateDirectories: true, attributes: nil)
        try fileManager.createDirectory(at: subdirectory2, withIntermediateDirectories: true, attributes: nil)
        try fileManager.createDirectory(at: subdirectory3, withIntermediateDirectories: true, attributes: nil)

        // Create files with duplicate names
        createFile(at: subdirectory1.appendingPathComponent("a.txt").path)
        createFile(at: subdirectory2.appendingPathComponent("a.txt").path)
        createFile(at: subdirectory3.appendingPathComponent("b.txt").path)
        createFile(at: baseDirectoryURL.appendingPathComponent("b.txt").path)

    } catch {
        print("Error creating sample directory structure at \(path): \(error)")
    }
}
