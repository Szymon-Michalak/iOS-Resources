// MARK: - Imports

import Foundation // String(repeating:, count:)

// MARK: - Solution

func reverseBinary(_ number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    
    let missingZeros = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: missingZeros) + binary
    var reversed = ""
    for i in paddedBinary.reversed() {
        reversed.append(i)
    }

    return UInt(reversed, radix: 2) ?? 0
}

// MARK: - Tests

assert(reverseBinary(32) == 4, "Test 1 failed")
assert(reverseBinary(41) == 148, "Test 2 failed")
assert(reverseBinary(4) == 32, "Test 3 failed")
assert(reverseBinary(148) == 41, "Test 4 failed")
