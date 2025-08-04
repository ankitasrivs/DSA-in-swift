# Comparison of Basic Sorting Algorithms

**Bubble Sort**, **Selection Sort**, **Insertion Sort**, and **Quick Sort** are sorting algorithms used based on dataset size, structure, and performance needs.

---

## 📊 Algorithm Comparison Table

| Algorithm           | Time Complexity (Best) | Time Complexity (Average) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
| ------------------- | ---------------------- | ------------------------- | ----------------------- | ---------------- | ------ | -------- |
| Bubble Sort         | O(n)                   | O(n²)                     | O(n²)                   | O(1)             | ✅      | ✅        |
| Selection Sort      | O(n²)                  | O(n²)                     | O(n²)                   | O(1)             | ❌      | ✅        |
| Insertion Sort      | O(n)                   | O(n²)                     | O(n²)                   | O(1)             | ✅      | ✅        |
| Quick Sort (Divide) | O(n log n)             | O(n log n)                | O(n²)                   | O(log n)         | ❌      | ✅        |
| Quick Sort (Filter) | O(n log n)             | O(n log n)                | O(n²)                   | O(n)             | ❌      | ❌        |

---

## 🧠 Algorithm Overviews

### 🔁 Bubble Sort

* **Idea**: Repeatedly compare and swap adjacent elements until sorted.
* **Best Use**: Educational or trivial small inputs.

---

### 🔍 Selection Sort

* **Idea**: Select the smallest remaining element and place it at the beginning.
* **Best Use**: When swaps must be minimized.

---

### 🧩 Insertion Sort

* **Idea**: Build sorted array one element at a time by shifting.
* **Best Use**: Small or nearly sorted data.

---

### ⚡️ Quick Sort (Divide and Conquer)

* **Idea**: Choose a pivot, partition the array, then sort subarrays recursively.
* **Best Use**: General-purpose fast sorting, widely used in practice.
* **Worst case**: O(n²) occurs when pivot is poorly chosen (e.g., already sorted data with first/last pivot).

---

### 🌊 Quick Sort (Filtering / Functional Style)

* **Idea**: Choose a pivot, then build `less`, `equal`, and `greater` arrays via filtering. Recursively sort and concatenate.
* **Best Use**: Clean functional style (e.g., in Swift, Python), but uses extra memory.
* **Drawback**: Not in-place — needs O(n) space.

---

## ✅ Advantages and ❌ Disadvantages

### Quick Sort (Divide and Conquer)

* ✅ Fast average performance: O(n log n)
* ✅ In-place (uses minimal additional memory)
* ❌ Unstable
* ❌ Can degrade to O(n²) without good pivot selection

### Quick Sort (Filtering)

* ✅ Elegant, clean implementation
* ✅ Safe from index bugs
* ❌ Not in-place (requires more memory)
* ❌ Still unstable

---

## 📌 Conclusion

* For small or nearly sorted data: **Insertion Sort** is preferred.
* For large datasets: **Quick Sort (Divide and Conquer)** is one of the fastest general-purpose algorithms.
* Use **Quick Sort (Filtering)** for simplicity in functional or scripting languages, if space isn’t a concern.
