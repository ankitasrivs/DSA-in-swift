
# 🧮 Comparison of Sorting Algorithms

This document compares basic and advanced sorting algorithms including **Bubble Sort**, **Selection Sort**, **Insertion Sort**, **Merge Sort**, **Quick Sort**, **Counting Sort**, **Radix Sort**, and **Bucket Sort**, based on their complexity, memory usage, and behavior.

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
| Bucket Sort    | O(n + k)               | O(n + k)              | O(n²)                   | O(n + k)         | Yes    | No       |

> `n` = number of elements
> `k` = range of values or number of digits/buckets

---

## 🔁 Bubble Sort

**Idea**: Repeatedly compare adjacent elements and swap if they are in the wrong order.
**Best for**: Small arrays or detecting nearly-sorted arrays.

```text
Time: O(n²) worst/avg, O(n) best  
Space: O(1)  
Stable: ✅  
In-place: ✅  
```

---

## 🔄 Selection Sort

**Idea**: Find the minimum element in each pass and move it to the correct position.
**Best for**: Small datasets when memory writes are expensive.

```text
Time: O(n²) in all cases  
Space: O(1)  
Stable: ❌  
In-place: ✅  
```

---

## ➕ Insertion Sort

**Idea**: Build a sorted section of the array by inserting each element into its correct position.
**Best for**: Small or mostly sorted arrays.

```text
Time: O(n²) worst, O(n) best  
Space: O(1)  
Stable: ✅  
In-place: ✅  
```

---

## 🧬 Merge Sort

**Idea**: Divide the array into halves, sort each half recursively, and merge.
**Best for**: Large arrays where stability is needed.

```text
Time: O(n log n)  
Space: O(n)  
Stable: ✅  
In-place: ❌  
```

---

## ⚡ Quick Sort

**Idea**: Choose a pivot, partition the array, and recursively sort the parts.
**Best for**: General-purpose fast sorting.

```text
Time: O(n log n) avg, O(n²) worst  
Space: O(log n)  
Stable: ❌  
In-place: ✅  
```

---

## 📊 Counting Sort

**Idea**: Count the frequency of each value and use cumulative counts to place elements in the correct position.
**Best for**: Sorting integers in a small known range (e.g. \[0, 100]).

```text
Time: O(n + k), where k is the range of input  
Space: O(n + k)  
Stable: ✅  
In-place: ❌  
```

### Example

Input: `[4, 2, 2, 8, 3, 3, 1]`

* Count frequencies → `[0,1,2,2,1,0,0,0,1]`
* Prefix sum → `[0,1,3,5,6,6,6,6,7]`
* Build output from end → `[1,2,2,3,3,4,8]`

---

## 🧮 Radix Sort

**Idea**: Sort numbers digit by digit starting from the least significant digit, using a stable sorting algorithm like Counting Sort at each digit level.
**Best for**: Sorting large sets of integers or strings when the maximum number of digits is small.

```text
Time: O(nk), where k is the number of digits  
Space: O(n + k)  
Stable: ✅  
In-place: ❌  
```

---

## 🪣 Bucket Sort

**Idea**: Divide the input into a fixed number of buckets, sort each bucket individually, and concatenate.
**Best for**: Uniformly distributed floating-point numbers in the range \[0, 1).

```text
Time: O(n + k) average, O(n²) worst  
Space: O(n + k)  
Stable: ✅  
In-place: ❌  
```

---

## 🆚 Counting vs Radix vs Bucket vs Merge/Quick

| Feature         | Counting Sort             | Radix Sort                            | Bucket Sort                                     | Merge/Quick Sort                            |
| --------------- | ------------------------- | ------------------------------------- | ----------------------------------------------- | ------------------------------------------- |
| **Type**        | Non-comparison            | Non-comparison                        | Non-comparison                                  | Comparison-based                            |
| **Input**       | Integers (known range)    | Integers or Strings                   | Floats (uniformly distributed)                  | Any                                         |
| **Stable**      | Yes                       | Yes                                   | Yes (if bucket sort uses stable sorting inside) | Merge: Yes, Quick: No                       |
| **In-place**    | No                        | No                                    | No                                              | Merge: No, Quick: Yes                       |
| **Performance** | Very fast if `k` is small | Efficient if digit count `k` is small | Fast with uniform data                          | Consistently good                           |
| **Drawbacks**   | Large `k` → memory usage  | Needs stable sort, not in-place       | Poor for skewed data                            | Merge needs space, Quick has bad worst case |

