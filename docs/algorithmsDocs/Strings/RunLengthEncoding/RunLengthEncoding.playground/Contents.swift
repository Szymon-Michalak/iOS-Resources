// MARK: - Solution
func runLengthEncoding(of string: String) -> String {

    guard string.count > 1 else { return string }

    var string = string
    var returnString: String = ""
    var previousLetter: Character = " "
    var currentLetterCount: Int  = 1

//    First letter
    previousLetter = string.removeFirst()

    for letter in string {
        if letter == previousLetter {
            currentLetterCount += 1
            continue
        }
        returnString += "\(previousLetter)\(currentLetterCount)"
        previousLetter = letter
        currentLetterCount = 1
    }

//    Last letter
    returnString += "\(previousLetter)\(currentLetterCount)"

    return returnString
}

// MARK: - Tests
assert(runLengthEncoding(of: "aabbcc") == "a2b2c2", "Test 1 failed")
assert(runLengthEncoding(of: "aaabaaabaaa") == "a3b1a3b1a3", "Test 2 failed")
assert(runLengthEncoding(of: "aaAAaa") == "a2A2a2", "Test 3 failed")
