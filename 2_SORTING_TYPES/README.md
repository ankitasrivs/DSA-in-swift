# Comparison of Basic Sorting Algorithms

**Bubble Sort**, **Selection Sort**, and **Insertion Sort** are simple sorting algorithms, commonly used for small datasets or as building blocks for more complex algorithms.

---

## 📊 Algorithm Comparison Table

| Algorithm      | Time Complexity (Best) | Time Complexity (Average) | Time Complexity (Worst) | Space Complexity | Stable | In-Place |
| -------------- | ---------------------- | ------------------------- | ----------------------- | ---------------- | ------ | -------- |
| Bubble Sort    | O(n)                   | O(n²)                     | O(n²)                   | O(1)             | ✅      | ✅        |
| Selection Sort | O(n²)                  | O(n²)                     | O(n²)                   | O(1)             | ❌      | ✅        |
| Insertion Sort | O(n)                   | O(n²)                     | O(n²)                   | O(1)             | ✅      | ✅        |

---

## 🧠 Algorithm Overviews

### 🔁 Bubble Sort

* **Idea**: Repeatedly compare adjacent elements and swap if they are in the wrong order. Repeat until no swaps are needed.
* **Use Case**: Educational purposes or extremely small datasets.
* **Complexity**:

  * Best: O(n) (already sorted)
  * Average/Worst: O(n²)
* **Stable**: ✅
* **Space**: O(1)

---

### 🔍 Selection Sort

* **Idea**: Repeatedly find the minimum element from the unsorted part and swap it with the first unsorted element.
* **Use Case**: When memory writes are expensive.
* **Complexity**:

  * Best/Average/Worst: O(n²)
* **Stable**: ❌
* **Space**: O(1)

---

### 🧩 Insertion Sort

* **Idea**: Build a sorted portion one element at a time by inserting new elements in their correct position.
* **Use Case**: Nearly sorted data or small datasets.
* **Complexity**:

  * Best: O(n) (already sorted)
  * Average/Worst: O(n²)
* **Stable**: ✅
* **Space**: O(1)

---

## ⚖️ Detailed Comparison

* **Efficiency**:

  * All three have **O(n²)** worst-case and average-case time complexity.
  * **Insertion Sort** outperforms the others on nearly sorted datasets due to fewer comparisons and swaps.
* **Stability**:

  * Bubble Sort and Insertion Sort are stable; Selection Sort is not.
* **Space**:

  * All are in-place sorting algorithms with **O(1)** space complexity.

---

## ✅ Advantages and ❌ Disadvantages

### Bubble Sort

* ✅ Simple to implement
* ✅ Stable
* ✅ In-place with constant space
* ❌ Very inefficient for large datasets
* ❌ Performs unnecessary swaps even when data is partially sorted

### Selection Sort

* ✅ Simple and deterministic behavior
* ✅ In-place with constant space
* ❌ Inefficient regardless of input order
* ❌ Not stable

### Insertion Sort

* ✅ Simple and intuitive
* ✅ Efficient for nearly sorted data
* ✅ Stable and in-place
* ❌ Not suitable for large datasets due to O(n²) worst-case

---

## 📌 Conclusion

While none of these algorithms are ideal for large datasets, **Insertion Sort** is usually the best choice for small or nearly sorted data. **Bubble Sort** is primarily educational, and **Selection Sort** is useful when swap operations are limited.

