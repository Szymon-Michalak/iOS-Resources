// MARK: - Imports
import Foundation

// MARK: - Solution
func recentJPEGs(in directoryPath: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(filePath: directoryPath)
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }

    var jpegs = [String]()

    for file in files {
        if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
            guard let attributes = try? fm.attributesOfItem(atPath: file.path) else { continue }
            guard let creationDate = attributes[.creationDate] as? Date else { continue }

            if creationDate > Date().addingTimeInterval(-2 * 60 * 60 * 24 ) {
                jpegs.append(file.lastPathComponent)
            }
        }
    }

    return jpegs
}

// MARK: - Tests
let testDirectoryPath = getTestDirectoryPath()
setUpTestDirectory(at: testDirectoryPath)

// Test 1: Check if the function returns JPEG files created in the last 48 hours
let recent = recentJPEGs(in: testDirectoryPath)
assert(!recent.isEmpty, "Test 1 failed: No recent JPEG files found")

// Test 2: Check if the function returns the correct number of recent JPEG files
let expectedRecentJPEGsCount = 2 // Assuming there are 2 recent JPEGs in the test directory
assert(recent.count == expectedRecentJPEGsCount, "Test 2 failed: Incorrect number of recent JPEG files")

// Test 3: Verify that the returned files have the correct extensions
for file in recent {
    assert(file.hasSuffix(".jpg") || file.hasSuffix(".jpeg"), "Test 3 failed: Found a file without .jpg or .jpeg extension")
}

// MARK: - Tests helpers

func createFile(at path: String, withCreationDate creationDate: Date) {
    let fileManager = FileManager.default
    let fileURL = URL(fileURLWithPath: path)
    let fileData = Data("Dummy file content".utf8) // Dummy content for the file

    do {
        // Create the file with dummy content
        try fileData.write(to: fileURL)

        // Set the creation date
        try fileManager.setAttributes([.creationDate: creationDate], ofItemAtPath: path)
    } catch {
        print("Error creating file at \(path): \(error)")
    }
}

func setUpTestDirectory(at directoryPath: String) {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)

    do {
        // Create the directory if it does not exist
        if !fileManager.fileExists(atPath: directoryPath) {
            try fileManager.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
        }

        // Clear existing files in the directory
        let existingFiles = try fileManager.contentsOfDirectory(atPath: directoryPath)
        for file in existingFiles {
            try fileManager.removeItem(at: directoryURL.appendingPathComponent(file))
        }

        // Create JPEG files with different creation dates
        let now = Date()
        createFile(at: directoryPath + "/image1.jpg", withCreationDate: now.addingTimeInterval(-1 * 60 * 60)) // 1 hour ago
        createFile(at: directoryPath + "/image2.png", withCreationDate: now.addingTimeInterval(-2 * 60 * 60)) // 2 hours ago
        createFile(at: directoryPath + "/image3.jpg", withCreationDate: now.addingTimeInterval(-3 * 60 * 60)) // 3 hours ago
        createFile(at: directoryPath + "/image4.jpeg", withCreationDate: now.addingTimeInterval(-49 * 60 * 60)) // 49 hours ago
        createFile(at: directoryPath + "/image5.jpg", withCreationDate: now.addingTimeInterval(-50 * 60 * 60)) // 50 hours ago
        createFile(at: directoryPath + "/image6.jpeg", withCreationDate: now.addingTimeInterval(-51 * 60 * 60)) // 51 hours ago

    } catch {
        print("Error setting up test directory at \(directoryPath): \(error)")
    }
}

func getTestDirectoryPath() -> String {
    let fileManager = FileManager.default
    let tempDirectoryURL = fileManager.temporaryDirectory.appendingPathComponent(UUID().uuidString)
    return tempDirectoryURL.path
}
