# 📚 Comparison of Basic Sorting Algorithms

**Bubble Sort**, **Selection Sort**, **Insertion Sort**, **Quick Sort**, and **Merge Sort** are fundamental sorting algorithms used in different scenarios based on data size, performance needs, and stability requirements.

---

## 📊 Algorithm Comparison Table

| Algorithm            | Time Complexity (Best) | Time Complexity (Average) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
|----------------------|------------------------|----------------------------|--------------------------|------------------|--------|----------|
| Bubble Sort          | O(n)                   | O(n²)                      | O(n²)                    | O(1)             | ✅      | ✅        |
| Selection Sort       | O(n²)                  | O(n²)                      | O(n²)                    | O(1)             | ❌      | ✅        |
| Insertion Sort       | O(n)                   | O(n²)                      | O(n²)                    | O(1)             | ✅      | ✅        |
| Quick Sort (Divide)  | O(n log n)             | O(n log n)                 | O(n²)                    | O(log n)         | ❌      | ✅        |
| Quick Sort (Filter)  | O(n log n)             | O(n log n)                 | O(n²)                    | O(n)             | ❌      | ❌        |
| Merge Sort           | O(n log n)             | O(n log n)                 | O(n log n)               | O(n)             | ✅      | ❌        |

---

## 🧠 Algorithm Overviews

### 🔁 Bubble Sort

- **Idea**: Repeatedly compare and swap adjacent elements until the list is sorted.
- **After each iteration**: The **last unsorted element** is correctly placed.
- ✅ Very simple to implement  
- ✅ Can detect already sorted array (best case O(n))  
- ❌ Very slow on large datasets (O(n²))  
- ❌ Not suitable for production use  

---

### 🔍 Selection Sort

- **Idea**: Repeatedly find the minimum element and move it to the front.
- **After each iteration**: The **first unsorted element** is correctly placed.
- ✅ Minimal number of swaps (O(n))  
- ✅ In-place and easy to implement  
- ❌ Always O(n²), even if already sorted  
- ❌ Unstable (may change order of equal elements)  

---

### 🧩 Insertion Sort

- **Idea**: Build the final sorted array one element at a time by comparing and shifting elements.
- **After each iteration**: The **left portion** of the array is sorted.
- ✅ Efficient for small or nearly sorted data  
- ✅ Stable and in-place  
- ✅ Adaptive (performs better on partially sorted arrays)  
- ❌ Poor performance on large unsorted arrays (O(n²))  

---

### ⚡ Quick Sort (Divide and Conquer)

- **Idea**: Choose a pivot element, partition the array around the pivot, and recursively apply the same strategy to subarrays.
- **After each partition**: The **pivot element** is at its final sorted position.
- ✅ Average time: O(n log n)  
- ✅ In-place  
- ❌ Unstable  
- ❌ Worst-case time: O(n²) with bad pivot choice  

---

### 🌊 Quick Sort (Filter / Functional Style)

- **Idea**: Choose a pivot, split into `less`, `equal`, and `greater` arrays using filtering, then recursively sort and concatenate.
- **After each merge**: Pivot and filtered sections are recursively combined.
- ✅ Clean, expressive code  
- ✅ No manual index handling  
- ❌ Not in-place (uses extra memory)  
- ❌ Unstable  

---

### 🔀 Merge Sort

- **Idea**: Divide the array into halves, sort each half recursively, then merge the sorted halves.
- **After each merge step**: Two sorted halves are combined into a larger sorted section.
- ✅ Stable sort  
- ✅ Consistent O(n log n) time  
- ✅ Good for linked lists and external sorting  
- ❌ Not in-place  
- ❌ Extra memory usage (O(n))  

---

## 📌 Final Recommendation

| Scenario                              | Recommended Algorithm        |
|--------------------------------------|------------------------------|
| Small or nearly sorted data          | Insertion Sort               |
| General-purpose, fast in-memory sort | Quick Sort (Divide)          |
| Stable sort required                 | Merge Sort                   |
| Clean, functional style              | Quick Sort (Filter)          |
| External sorting / Linked lists      | Merge Sort                   |
| Educational / Teaching concepts      | Bubble Sort, Selection Sort  |
