// MARK: - Solution
func isNumeric(_ string: String) -> Bool {
    for char in string {
        if !char.isNumber {
            return false
        }
    }
    return true
}

// MARK: - Tests
assert(isNumeric("01010101") == true, "Test 1 failed")
assert(isNumeric("123456789") == true, "Test 2 failed")
assert(isNumeric("9223372036854775808") == true, "Test 3 failed")
assert(isNumeric("1.01") == false, "Test 4 failed")
