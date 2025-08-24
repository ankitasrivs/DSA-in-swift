# 🔍 Binary Search in Swift

Binary Search is a **searching algorithm** used on **sorted arrays** (ascending or descending).  
It works by repeatedly dividing the search interval in half.

---

## 📌 Key Properties
- Works only on **sorted arrays**.
- Time Complexity: **O(log n)**.
- Space Complexity: **O(1)** (iterative), **O(log n)** (recursive due to call stack).
- Much faster than linear search for large datasets.

---

## 📖 Algorithm Steps
1. Find the **middle index** of the array.
2. Compare the **middle element** with the target:
   - If middle element == target → return index.
   - If middle element > target → search the **left half**.
   - If middle element < target → search the **right half**.
3. Repeat until target is found or interval becomes empty.

---

## ✅ Example

Array: `[1, 3, 5, 7, 9, 11]`  
Target: `7`  

Steps:
1. Middle = 5 → target > 5 → go right  
2. Middle = 9 → target < 9 → go left  
3. Middle = 7 → 🎯 found!  

Output index = `3` (0-based indexing).

---

## 📝 Swift Implementations

### Iterative Binary Search
```swift
func binarySearchIterative(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1 // Not found
}
