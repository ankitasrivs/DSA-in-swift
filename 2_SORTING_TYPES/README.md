# 🧮 Comparison of Sorting Algorithms

This document compares basic and advanced sorting algorithms including **Bubble Sort**, **Selection Sort**, **Insertion Sort**, **Quick Sort**, **Merge Sort**, **Heap Sort**, and **Counting Sort**, based on their complexity, memory usage, and behavior.

---

## 📊 Algorithm Comparison Table

| Algorithm           | Time Complexity (Best) | Time Complexity (Avg) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
| ------------------- | ---------------------- | ---------------------- | ------------------------ | ---------------- | ------ | -------- |
| Bubble Sort         | O(n)                   | O(n²)                  | O(n²)                    | O(1)             | ✅      | ✅        |
| Selection Sort      | O(n²)                  | O(n²)                  | O(n²)                    | O(1)             | ❌      | ✅        |
| Insertion Sort      | O(n)                   | O(n²)                  | O(n²)                    | O(1)             | ✅      | ✅        |
| Quick Sort          | O(n log n)             | O(n log n)             | O(n²)                    | O(log n)         | ❌      | ✅        |
| Merge Sort          | O(n log n)             | O(n log n)             | O(n log n)               | O(n)             | ✅      | ❌        |
| Heap Sort           | O(n log n)             | O(n log n)             | O(n log n)               | O(1)             | ❌      | ✅        |
| Counting Sort       | O(n + k)               | O(n + k)               | O(n + k)                 | O(k)             | ✅      | ❌        |


## 🧠 Algorithm Overviews

### 🔁 Bubble Sort

**Idea**: Repeatedly compare adjacent elements and swap if needed, pushing the largest value to the end in each pass.  
**Sorted element after each pass**: Largest value "bubbles" to the end.

---

### 🔍 Selection Sort

**Idea**: Repeatedly find the minimum and place it at the beginning.  
**Sorted element after each pass**: Smallest value placed at the correct position.

---

### 🧩 Insertion Sort

**Idea**: Insert each new item into the sorted subarray on the left.  
**Sorted element after each pass**: First `k` elements are sorted after `k` passes.

---

### ⚡ Quick Sort (Divide and Conquer)

**Idea**: Choose a pivot, partition the array, and recursively sort subarrays.  
**Sorted element after each partition**: Pivot is placed at its final sorted position.

---

### 🌊 Merge Sort

**Idea**: Divide the array, sort each half, and merge.  
**Sorted element after each merge**: Final merge gives the sorted result.

---

### 🏔 Heap Sort

**Idea**: Build a max-heap, repeatedly remove the root (max) and heapify the reduced heap.  
**Sorted element after each pass**: Largest element is placed at the end of the unsorted portion.

---

### 🧮 Counting Sort

**Idea**: Count the frequency of each value and use cumulative counts to place elements directly into the correct sorted position.  
**Sorted element after each pass**: All elements are placed in their final position in a single pass using the frequency table.

---

## ✅ Advantages and ❌ Disadvantages

### Bubble Sort

✅ Simple  
✅ Stable  
✅ In-place  
❌ Very slow  
❌ Excessive comparisons/swaps

---

### Selection Sort

✅ Fewer swaps than bubble sort  
✅ In-place  
❌ Unstable  
❌ Always O(n²), even if sorted

---

### Insertion Sort

✅ Efficient on small/mostly sorted data  
✅ Stable  
✅ Adaptive (O(n) on sorted input)  
❌ Still O(n²) worst case

---

### Quick Sort

✅ Very fast on average  
✅ In-place  
❌ Unstable  
❌ Worst case O(n²) with bad pivot

---

### Merge Sort

✅ Stable  
✅ Always O(n log n)  
✅ Great for linked lists  
❌ Uses O(n) extra space  
❌ Not in-place

---

### Heap Sort

✅ Time-guaranteed O(n log n)  
✅ In-place  
✅ Doesn’t degrade with bad data  
❌ Unstable  
❌ Not as fast in practice as Quick Sort (due to more swaps)

---

### Counting Sort

✅ Linear time for small value ranges  
✅ Stable  
✅ Great for integers or categories  
❌ Uses O(k) space  
❌ Not in-place  
❌ Works only on discrete, integer-like data

---

## 💡 Why Insertion Sort Is Better Than Bubble & Selection

* Adapts to sorted input: O(n) best case  
* Fewer swaps than bubble  
* Stable (unlike selection)  
* Faster in practice on small datasets

---

## ⚔ Bubble vs Selection

| Feature     | Bubble Sort | Selection Sort |
| ----------- | ----------- | -------------- |
| Swaps       | High        | Minimal        |
| Comparisons | O(n²)       | O(n²)          |
| Stability   | ✅ Yes       | ❌ No          |
| Adaptive    | ✅ O(n)      | ❌ No          |

---

## ⚔ Quick Sort vs Merge Sort

| Feature      | Quick Sort | Merge Sort   |
| ------------ | ---------- | ------------ |
| Time (Avg)   | O(n log n) | O(n log n)   |
| Time (Worst) | ❌ O(n²)    | ✅ O(n log n) |
| Space        | ✅ O(log n) | ❌ O(n)       |
| Stable       | ❌ No       | ✅ Yes        |
| In-place     | ✅ Yes      | ❌ No         |

---

## ⚔ Merge Sort vs Heap Sort

| Feature  | Merge Sort   | Heap Sort  |
| -------- | ------------ | ---------- |
| Time     | O(n log n)   | O(n log n) |
| Space    | ❌ O(n)       | ✅ O(1)     |
| Stable   | ✅ Yes        | ❌ No       |
| In-place | ❌ No         | ✅ Yes      |
| Use Case | Linked lists | Arrays     |

---

## ⚔ Counting Sort vs Quick Sort

| Feature      | Counting Sort | Quick Sort     |
| ------------ | ------------- | -------------- |
| Time (Avg)   | ✅ O(n + k)    | ✅ O(n log n)   |
| Time (Worst) | ✅ O(n + k)    | ❌ O(n²)        |
| Space        | ❌ O(k)        | ✅ O(log n)     |
| Stable       | ✅ Yes         | ❌ No           |
| In-place     | ❌ No          | ✅ Yes          |
| Input Type   | Integers only | Any comparable |

---

## ⚔ Counting Sort vs Merge Sort

| Feature   | Counting Sort | Merge Sort |
| --------- | ------------- | ---------- |
| Time      | O(n + k)      | O(n log n) |
| Space     | O(k)          | O(n)       |
| Stable    | ✅ Yes         | ✅ Yes      |
| Use Case  | Small-range ints | Linked lists / stable general sorting |
| In-place  | ❌ No          | ❌ No       |

---

## ⚠ What is Stability?

**Stable Sort** = Equal elements maintain their relative order.

🔸 Original: `[(3, A), (2, B), (3, C)]`  
🔸 Stable:   `[(2, B), (3, A), (3, C)]` ✅  
🔸 Unstable: `[(2, B), (3, C), (3, A)]` ❌

---

## ❌ Why Selection and Quick Sort Are Unstable

* **Selection Sort**: Swaps may move equal elements past each other.  
* **Quick Sort**: Partitioning doesn't preserve the order of equal elements relative to pivot.

---

## 📌 Summary

| Scenario                         | Best Choice            |
| -------------------------------- | ---------------------- |
| Small / nearly sorted            | Insertion Sort         |
| Worst-case guaranteed            | Merge Sort             |
| In-place fast sorting            | Quick Sort             |
| Limited memory, worst-case      | Heap Sort              |
| Stability needed                 | Merge / Insertion / Counting |
| Integers, small range            | Counting Sort          |
| Educational / visual             | Bubble, Selection      |
