
# 🧮 Comparison of Sorting Algorithms

This document compares basic and advanced sorting algorithms including **Bubble Sort**, **Selection Sort**, **Insertion Sort**, **Quick Sort**, and **Merge Sort**, based on their complexity, memory usage, and behavior.

---

## 📊 Algorithm Comparison Table

| Algorithm           | Time Complexity (Best) | Time Complexity (Avg) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
| ------------------- | ---------------------- | ---------------------- | ------------------------ | ---------------- | ------ | -------- |
| Bubble Sort         | O(n)                   | O(n²)                  | O(n²)                    | O(1)             | ✅      | ✅        |
| Selection Sort      | O(n²)                  | O(n²)                  | O(n²)                    | O(1)             | ❌      | ✅        |
| Insertion Sort      | O(n)                   | O(n²)                  | O(n²)                    | O(1)             | ✅      | ✅        |
| Quick Sort (Divide) | O(n log n)             | O(n log n)             | O(n²)                    | O(log n)         | ❌      | ✅        |
| Merge Sort          | O(n log n)             | O(n log n)             | O(n log n)               | O(n)             | ✅      | ❌        |

---

## 🧠 Algorithm Overviews

### 🔁 Bubble Sort

**Idea**: Repeatedly compare adjacent elements and swap if needed, pushing the largest value to the end in each pass.

**Sorted element after each pass**:
- After pass 1: largest element is at the end.
- After pass 2: second-largest at second-last, and so on.

**Best Use**: Educational or very small input.

---

### 🔍 Selection Sort

**Idea**: Repeatedly find the minimum from unsorted part and move to sorted part.

**Sorted element after each pass**:
- After pass 1: smallest element placed at beginning.
- After pass 2: second-smallest in position 2, etc.

**Best Use**: Environments where swaps are expensive but comparisons are cheap.

---

### 🧩 Insertion Sort

**Idea**: Builds a sorted sublist by inserting each element at the correct position.

**Sorted elements after each pass**:
- After inserting the 2nd element: first 2 are sorted.
- After 3rd: first 3 are sorted, and so on.

**Best Use**: Small or nearly sorted arrays.

---

### ⚡️ Quick Sort (Divide and Conquer)

**Idea**: Select a pivot, partition the array around it, and recursively sort subarrays.

**Sorted element after each partition**:
- After each partition: pivot is placed at its final sorted position.

**Best Use**: Large datasets, general-purpose fast sorting.

---

### 🌊 Merge Sort

**Idea**: Divide the array in halves, sort each half, and merge them.

**Sorted element after each merge**:
- Each merge creates a partially sorted segment.
- Final merge gives fully sorted array.

**Best Use**: Stable sorting with guaranteed O(n log n), especially for linked lists.

---

## ✅ Advantages and ❌ Disadvantages

### Bubble Sort
✅ Easy to implement  
✅ Stable  
✅ In-place  
❌ Very slow on large inputs  
❌ High number of comparisons/swaps  

### Selection Sort  
✅ Fewer swaps than bubble sort  
✅ In-place  
❌ Always O(n²), even if already sorted  
❌ ❌ Unstable (explained below)

### Insertion Sort  
✅ Efficient for small/nearly sorted data  
✅ Stable and in-place  
✅ Adaptive (runs in O(n) on sorted input)  
❌ Still O(n²) in worst case  

### Quick Sort (Divide)  
✅ Fast average case O(n log n)  
✅ In-place  
❌ ❌ Unstable  
❌ O(n²) worst case (bad pivot)  

### Merge Sort  
✅ Always O(n log n)  
✅ Stable  
✅ Good for linked lists or external sorting  
❌ Not in-place (needs O(n) space)  

---

## 💡 Why Insertion Sort is Better than Bubble & Selection

- **Faster on partially sorted arrays**: Insertion Sort adapts and runs in O(n) for sorted data.
- **Stable**: Maintains order of equal elements, unlike Selection Sort.
- **Fewer swaps**: Only moves when necessary, unlike Bubble Sort's constant swapping.

---

## ⚔️ Bubble vs Selection Sort

| Aspect         | Bubble Sort       | Selection Sort     |
| -------------- | ----------------- | ------------------ |
| Swaps          | Many              | Minimal            |
| Comparisons    | O(n²)             | O(n²)              |
| Stability      | ✅ Stable          | ❌ Unstable         |
| Adaptiveness   | ✅ O(n) best case | ❌ Always O(n²)     |

**Verdict**: Use **Bubble Sort** if data might already be sorted and stability is needed. Otherwise, **Selection Sort** uses fewer writes.

---

## ⚡️ Quick Sort vs 🧬 Merge Sort

| Feature         | Quick Sort       | Merge Sort        |
|-----------------|------------------|-------------------|
| Time Avg        | O(n log n)        | O(n log n)         |
| Time Worst      | ❌ O(n²)           | ✅ O(n log n)        |
| Space           | ✅ O(log n)        | ❌ O(n)              |
| Stability       | ❌ Unstable        | ✅ Stable            |
| In-place        | ✅ Yes             | ❌ No                |

**Verdict**:  
- Choose **Quick Sort** when speed and memory are critical, and stability isn't needed.  
- Use **Merge Sort** when stability is important or worst-case consistency is needed (e.g., linked lists, databases).

---

## ⚠️ What is Stability?

**Stable sorting** means if two elements are equal, their relative order is preserved after sorting.

### Example:
Original array:  
`[(3, A), (2, B), (3, C)]`

Sorted (Stable):  
`[(2, B), (3, A), (3, C)]` ✅

Sorted (Unstable):  
`[(2, B), (3, C), (3, A)]` ❌

---

## ❌ Why Selection and Quick Sort Are Unstable

- **Selection Sort**: When you swap the current element with the minimum in the rest of the array, equal values may get reordered.
- **Quick Sort**: Partitioning rearranges elements without preserving the order of equal items relative to the pivot.

---

## 📌 Summary

- Use **Insertion Sort** for small or almost sorted datasets.
- Use **Merge Sort** for guaranteed performance and stability.
- Use **Quick Sort** for in-place and fast sorting on average.
- Avoid **Bubble** and **Selection** in production — good for learning.

