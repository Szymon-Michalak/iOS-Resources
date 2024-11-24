---
title: "Solutions to Contiguous Array"
description: "Explore efficient approaches to find the largest contiguous subarray with equal numbers of 0s and 1s."
---

## Objective
Find the maximum length of a contiguous subarray with an equal number of 0s and 1s.

- **Objective 1:** Convert the problem into finding subarrays with a sum of `0` by replacing `0` with `-1`.
- **Objective 2:** Use a hash table to store the first occurrence of cumulative sums.
- **Objective 3:** Calculate the maximum length efficiently in O(n) time.

---

## Solution 1: Brute Force Approach
Check all subarrays and count the number of `0s` and `1s` to determine validity.

### Pseudo Code
```
1. Initialize `maxLength` to 0.
2. Iterate through all possible subarrays:
    a. Count the number of `0s` and `1s`.
    b. If counts are equal, update `maxLength`.
3. Return `maxLength`.
```

### Complexity Analysis
- **Time Complexity:** O(n²), as we iterate over all subarrays.
- **Space Complexity:** O(1), no additional space is used.
- **Pros:** Straightforward to implement.
- **Cons:** Inefficient for large arrays due to quadratic time complexity.

### Swift Implementation
```swift
func bruteForce(nums: [Int]) -> Int {
    let n = nums.count
    var maxLength = 0
    for i in 0..<n {
        var count0 = 0, count1 = 0
        for j in i..<n {
            if nums[j] == 0 { count0 += 1 } else { count1 += 1 }
            if count0 == count1 {
                maxLength = max(maxLength, j - i + 1)
            }
        }
    }
    return maxLength
}
```

---

## Solution 2: Hash Table with Prefix Sum
Use a hash table to store the first occurrence of cumulative sums, allowing O(n) time complexity.

### Pseudo Code
```
1. Initialize `maxLength` to 0, `sum` to 0, and a hash table `prefixMap`.
2. Insert (0, -1) into `prefixMap` to handle edge cases.
3. Iterate through the array:
    a. Update `sum` (add -1 for 0, add +1 for 1).
    b. If `sum` exists in `prefixMap`:
        - Calculate length as current index - `prefixMap[sum]`.
        - Update `maxLength`.
    c. Else, store the current index in `prefixMap[sum]`.
4. Return `maxLength`.
```

### Complexity Analysis
- **Time Complexity:** O(n), a single pass through the array.
- **Space Complexity:** O(n), due to the hash table storing cumulative sums.
- **Pros:** Efficient and scalable.
- **Cons:** Requires additional memory for the hash table.

### Swift Implementation
```swift
func findMaxLength(nums: [Int]) -> Int {
    var sum = 0
    var maxLength = 0
    var prefixMap: [Int: Int] = [0: -1] // Initial sum at index -1

    for (i, num) in nums.enumerated() {
        sum += (num == 0 ? -1 : 1)
        if let prevIndex = prefixMap[sum] {
            maxLength = max(maxLength, i - prevIndex)
        } else {
            prefixMap[sum] = i
        }
    }
    return maxLength
}
```

---

## Solution 3: Optimized Space Approach
This solution is similar to Solution 2 but can be optimized further in specific scenarios where additional constraints are known. This is an advanced solution only if space reduction is critical and trade-offs in complexity are acceptable.

---

## Conclusion
The **hash table with prefix sum** is the optimal solution with O(n) time complexity and O(n) space complexity. While the brute force approach is simpler to understand, it is not practical for large input sizes.

- Start with the **brute force** solution to understand the problem.
- Progress to the **prefix sum with hash table** for efficient real-world implementation.
