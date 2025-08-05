

# 🧮 Comparison of Sorting Algorithms

This document compares basic and advanced sorting algorithms including **Bubble Sort**, **Selection Sort**, **Insertion Sort**, **Merge Sort**, **Quick Sort**, **Counting Sort**, and **Radix Sort**, based on their complexity, memory usage, and behavior.

---

## 📊 Algorithm Comparison Table

| Algorithm      | Time Complexity (Best) | Time Complexity (Avg) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
| -------------- | ---------------------- | --------------------- | ----------------------- | ---------------- | ------ | -------- |
| Bubble Sort    | O(n)                   | O(n²)                 | O(n²)                   | O(1)             | Yes    | Yes      |
| Selection Sort | O(n²)                  | O(n²)                 | O(n²)                   | O(1)             | No     | Yes      |
| Insertion Sort | O(n)                   | O(n²)                 | O(n²)                   | O(1)             | Yes    | Yes      |
| Merge Sort     | O(n log n)             | O(n log n)            | O(n log n)              | O(n)             | Yes    | No       |
| Quick Sort     | O(n log n)             | O(n log n)            | O(n²)                   | O(log n)         | No     | Yes      |
| Counting Sort  | O(n + k)               | O(n + k)              | O(n + k)                | O(n + k)         | Yes    | No       |
| Radix Sort     | O(nk)                  | O(nk)                 | O(nk)                   | O(n + k)         | Yes    | No       |

* `n` = number of elements
* `k` = range of the input (Counting Sort) or number of digits (Radix Sort)

---

## 🔁 Bubble Sort

* **Idea**: Repeatedly compare adjacent elements and swap if they are in the wrong order.
* **Best for**: Small arrays or detecting nearly-sorted arrays.

```text
Time: O(n²) worst/avg, O(n) best  
Space: O(1)  
Stable: ✅  
In-place: ✅  
```

---

## 🔄 Selection Sort

* **Idea**: Find the minimum element in each pass and move it to the correct position.
* **Best for**: Small datasets when memory writes are expensive.

```text
Time: O(n²) in all cases  
Space: O(1)  
Stable: ❌  
In-place: ✅  
```

---

## ➕ Insertion Sort

* **Idea**: Build a sorted section of the array by inserting each element into its correct position.
* **Best for**: Small or mostly sorted arrays.

```text
Time: O(n²) worst, O(n) best  
Space: O(1)  
Stable: ✅  
In-place: ✅  
```

---

## 🧬 Merge Sort

* **Idea**: Divide the array into halves, sort each half recursively, and merge.
* **Best for**: Large arrays where stability is needed.

```text
Time: O(n log n)  
Space: O(n)  
Stable: ✅  
In-place: ❌  
```

---

## ⚡ Quick Sort

* **Idea**: Choose a pivot, partition the array, and recursively sort the parts.
* **Best for**: General-purpose fast sorting.

```text
Time: O(n log n) avg, O(n²) worst  
Space: O(log n)  
Stable: ❌  
In-place: ✅  
```

---

## 📊 Counting Sort

* **Idea**: Count the frequency of each value and use cumulative counts to place elements in the correct position.

* **Best for**: Sorting integers in a small known range (e.g. \[0, 100]).

```text
Time: O(n + k), where k is the range of input  
Space: O(n + k)  
Stable: ✅  
In-place: ❌  
```

### Example:

Input: `[4, 2, 2, 8, 3, 3, 1]`

* Count frequencies → `[0,1,2,2,1,0,0,0,1]`
* Prefix sum → `[0,1,3,5,6,6,6,6,7]`
* Build output from end → `[1,2,2,3,3,4,8]`

---

## 🔢 Radix Sort

* **Idea**: Sort numbers by processing each digit from least significant to most significant using a stable sort like Counting Sort.

* **Best for**: Sorting numbers with a fixed number of digits (e.g. 32-bit integers).

```text
Time: O(nk), where k is the number of digits  
Space: O(n + k)  
Stable: ✅  
In-place: ❌  
```

### Example:

Input: `[170, 45, 75, 90, 802, 24, 2, 66]`

Sort by each digit:

1. LSD (units) → `[170, 90, 802, 2, 24, 45, 75, 66]`
2. Tens → `[802, 2, 24, 45, 66, 170, 75, 90]`
3. Hundreds → `[2, 24, 45, 66, 75, 90, 170, 802]`

---

Let me know if you want to add Heap Sort, Bucket Sort, TimSort, or diagrams!
