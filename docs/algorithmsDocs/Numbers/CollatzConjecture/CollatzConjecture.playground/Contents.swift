// MARK: - Solution

func collatzConjecture(for number: Int) -> String {
    guard number > 0 else { return "Number must be positive"}
    var number: Int = number
    var solutionSequence: [Int] = []
    while(true) {
        solutionSequence.append(number)
        if number == 1 { break }
        if number.isMultiple(of: 2) { number /= 2}
        else { number = number * 3 + 1}
    }

    let stringSequence = solutionSequence.map{ String($0) }
    return stringSequence.joined(separator: " -> ")
}

// MARK: - Tests

assert(collatzConjecture(for: 3) == "3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1", "Test 1 failed")
