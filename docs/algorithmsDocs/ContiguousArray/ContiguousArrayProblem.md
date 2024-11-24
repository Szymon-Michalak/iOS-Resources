---
title: "Contiguous Array"
description: "Maximize the length of a contiguous subarray with an equal number of 0s and 1s."
---

### Problem Statement
Given a binary array `nums`, find the maximum length of a contiguous subarray with an equal number of 0s and 1s.

For example:
- Input: `nums = [0, 1, 0]`
- Output: `2`
- Explanation: `[0, 1]` is the largest contiguous subarray with equal number of 0s and 1s.

### Constraints
- The length of the array will be in the range `[1, 50,000]`.
- Each element in the array will be either `0` or `1`.

### Input Format
- **Input 1:** A binary array `nums` containing only `0` and `1`.

### Output Format
- **Output 1:** An integer representing the length of the largest contiguous subarray with an equal number of 0s and 1s.

### Example Cases
- **Example 1:**
  - **Input:** `nums = [0, 1]`
  - **Output:** `2`
  - **Explanation:** The array `[0, 1]` has an equal number of 0s and 1s.

- **Example 2:**
  - **Input:** `nums = [0, 1, 0]`
  - **Output:** `2`
  - **Explanation:** The subarray `[0, 1]` has an equal number of 0s and 1s.

### Additional Notes
- The problem can be efficiently solved using a **prefix sum** approach with a hash table.
- Treat `0` as `-1` to convert the problem into finding subarrays with a sum of `0`.
