
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

## 🆚 Which is Better?

### ✅ Why Insertion Sort is Better Than Bubble and Selection Sort

| Feature               | Bubble Sort | Selection Sort | Insertion Sort |
|------------------------|-------------|----------------|----------------|
| Best-case performance  | O(n)        | O(n²)          | O(n)           |
| Adaptive to order      | ✅           | ❌              | ✅              |
| Stable                 | ✅           | ❌              | ✅              |
| Number of swaps        | High        | Low            | Depends        |

- **Insertion Sort** adapts to nearly sorted data, reducing comparisons and shifts.
- **Bubble Sort** continues comparing even if array is already sorted unless optimized.
- **Selection Sort** always does O(n²) comparisons even on sorted arrays.
- Hence, **Insertion Sort is the best among the three** for small or nearly sorted datasets.

---

### 🔁 Bubble Sort vs Selection Sort: Which Is Better?

| Criteria             | Bubble Sort         | Selection Sort       |
|----------------------|---------------------|-----------------------|
| Stable               | ✅ Yes              | ❌ No                |
| Swaps                | ❌ More             | ✅ Fewer             |
| Best-case runtime    | ✅ O(n)             | ❌ O(n²)             |
| Easy to understand   | ✅ Yes              | ✅ Yes               |

- Use **Bubble Sort** when you need a **stable sort** and may benefit from **early termination**.
- Use **Selection Sort** when swaps are expensive (e.g., writing to disk/EEPROM).

---

### ⚔️ Quick Sort vs Merge Sort

| Feature               | Quick Sort (Divide) | Merge Sort          |
|------------------------|----------------------|----------------------|
| Time Complexity (avg)  | O(n log n)           | O(n log n)           |
| Worst-case             | ❌ O(n²)             | ✅ O(n log n)         |
| Stable                 | ❌ No                | ✅ Yes               |
| In-place               | ✅ Yes               | ❌ No                |
| Space Usage           | ✅ Low (O(log n))    | ❌ High (O(n))       |
| Use Case              | General-purpose sort | Linked lists, stable sort |

- **Quick Sort** is generally faster in practice due to in-place behavior and better cache performance.
- **Merge Sort** is preferred when:
  - **Stability** is required
  - **Linked lists** are used
  - Predictable performance matters (e.g., in real-time systems)

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



