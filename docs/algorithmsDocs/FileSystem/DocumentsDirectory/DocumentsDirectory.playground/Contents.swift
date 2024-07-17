// MARK: - Imports
import Foundation // FileManager

// MARK: - Solution
func getDocumentsDirectory() -> URL? {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths.first
}

// MARK: - Tests
let documentsURL = getDocumentsDirectory()

assert(documentsURL != nil, "Test 1 failed: URL is nil")
assert(FileManager.default.fileExists(atPath: documentsURL!.path), "Test 2 failed: Path does not exist")

