# 🔍 Linear Search vs Binary Search

This document compares two fundamental searching algorithms: **Linear Search** and **Binary Search**. Both are used to find the position of an element in a collection.

---

## 📌 1. Linear Search

Linear search checks each element of the list sequentially until the target element is found or the list ends.

### ✅ Advantages
- Simple to implement
- Works on unsorted data
- No extra memory required

### ❌ Disadvantages
- Slow for large datasets
- Inefficient compared to binary search

### 📊 Time Complexity
| Case       | Complexity |
|------------|------------|
| Best Case  | O(1)       |
| Average    | O(n)       |
| Worst Case | O(n)       |

### 🧠 Space Complexity:  
- O(1) — constant extra space

---

## 📌 2. Binary Search

Binary search divides the list in half to locate the target. Requires the array to be **sorted**.

### ✅ Advantages
- Much faster than linear search for large datasets
- Efficient for read-heavy sorted data

### ❌ Disadvantages
- Requires sorted data
- More complex implementation
- Inefficient for frequently changing datasets (due to sorting overhead)

### 📊 Time Complexity
| Case       | Complexity |
|------------|------------|
| Best Case  | O(1)       |
| Average    | O(log n)   |
| Worst Case | O(log n)   |

### 🧠 Space Complexity:  
- O(1) for iterative version  
- O(log n) for recursive version (due to call stack)

---

## 🧮 Example Use Cases

| Scenario                           | Preferred Search |
|------------------------------------|------------------|
| Small or unsorted dataset          | Linear Search    |
| Large sorted dataset               | Binary Search    |
| Frequent insertions/deletions     | Linear Search    |
| Mostly read-only sorted data       | Binary Search    |

