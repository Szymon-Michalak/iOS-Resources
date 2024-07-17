// MARK: - Imports

import UIKit

// MARK: - Solution

// Function to convert JPEGs to PNGs
func convertJPEGsToPNGs(in directoryPath: String) {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: directoryPath)

    guard let files = try? fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return }

    for file in files {
        if file.pathExtension.lowercased() == "jpg" || file.pathExtension.lowercased() == "jpeg" {
            do {
                let imageData = try Data(contentsOf: file)
                guard let image = UIImage(data: imageData) else { continue }

                guard let pngData = image.pngData() else { continue }

                let pngFileURL = file.deletingPathExtension().appendingPathExtension("png")
                try pngData.write(to: pngFileURL)
            } catch {
                continue
            }
        }
    }
}

// MARK: - Tests

// Test 1: Convert JPEG files in a sample directory
let testDirectoryPath1 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory1").path
createSampleDirectoryWithJPEGs(at: testDirectoryPath1)
convertJPEGsToPNGs(in: testDirectoryPath1)

let testFiles1 = try FileManager.default.contentsOfDirectory(atPath: testDirectoryPath1)
assert(testFiles1.contains("image1.png"), "Test 1 failed: 'image1.png' not found")
assert(testFiles1.contains("image2.png"), "Test 1 failed: 'image2.png' not found")

// Test 2: No files in the directory
let testDirectoryPath2 = FileManager.default.temporaryDirectory.appendingPathComponent("testDirectory2").path
try? FileManager.default.createDirectory(atPath: testDirectoryPath2, withIntermediateDirectories: true, attributes: nil)
convertJPEGsToPNGs(in: testDirectoryPath2)

let testFiles2 = try FileManager.default.contentsOfDirectory(atPath: testDirectoryPath2)
assert(testFiles2.isEmpty, "Test 2 failed: Expected no files in the empty directory")


// MARK: - Test helper functions

// Helper function to create a JPEG file
func createJPEG(at path: String) {
    let fileManager = FileManager.default
    let fileURL = URL(fileURLWithPath: path)
    let image = UIImage(color: .red, size: CGSize(width: 100, height: 100))

    if let jpegData = image?.jpegData(compressionQuality: 1.0) {
        do {
            try jpegData.write(to: fileURL)
        } catch {
            print("Error creating JPEG file at \(path): \(error)")
        }
    }
}

// Helper function to create a directory with JPEG files
func createSampleDirectoryWithJPEGs(at path: String) {
    let fileManager = FileManager.default
    let directoryURL = URL(fileURLWithPath: path)

    do {
        if !fileManager.fileExists(atPath: path) {
            try fileManager.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
        }

        // Create JPEG files
        createJPEG(at: directoryURL.appendingPathComponent("image1.jpg").path)
        createJPEG(at: directoryURL.appendingPathComponent("image2.jpeg").path)
        createJPEG(at: directoryURL.appendingPathComponent("image3.png").path)
    } catch {
        print("Error creating sample directory at \(path): \(error)")
    }
}

// Extension to create a UIImage from a color
extension UIImage {
    convenience init?(color: UIColor, size: CGSize) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
