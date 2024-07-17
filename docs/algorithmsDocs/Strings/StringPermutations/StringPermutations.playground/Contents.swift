// MARK: - Solution
func permutations(of string: String) -> [String] {
    let strArray = Array(string)
    let length = strArray.count

    var result: [String] = []


//  base case
    if length == 1 {
        return [string]
    }

//  recursive case
    for i in 0..<length {
        let currentLetter = strArray[i]

        var remainingChars = strArray
        remainingChars.remove(at: i)
        let remainingString = String(remainingChars)

        let remainingPermutations = permutations(of: remainingString)

        for permutation in remainingPermutations {
            result.append(String(currentLetter) + permutation)
        }
    }

    return result
}

// MARK: - Tests
assert(permutations(of: "a") == ["a"], "Test 1 failed")
assert(Set(permutations(of: "ab")) == Set(["ab", "ba"]), "Test 2 failed")
assert(Set(permutations(of: "abc")) == Set(["abc", "acb", "bac", "bca", "cab", "cba"]), "Test 3 failed")
assert(permutations(of: "wombat").count == 720, "Test 4 failed")
