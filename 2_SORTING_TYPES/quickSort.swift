/*
Introduction to Quick Sort
Quick Sort is a highly efficient sorting algorithm that uses the divide-and-conquer strategy to sort elements. The basic idea is to select a ‘pivot’ element from the array and partition the other elements into two sub-arrays, according to whether they are less than or greater than the pivot. The sub-arrays are then sorted recursively.

Key Characteristics of Quick Sort:

Divide-and-Conquer: The algorithm works by dividing the array into smaller sub-arrays and sorting those.
In-Place Sorting: It sorts the array in place, meaning it requires a small, constant amount of extra storage space.
Average Case Time Complexity: O(n log n)
Worst Case Time Complexity: O(n²) (This can be mitigated with good pivot selection strategies).

Example 1: Sorting an Array of Integers

Step-by-Step Explanation:

Choose a Pivot: Select a pivot element from the array. There are various strategies to choose a pivot, such as picking the first element, the last element, the middle element, or a random element.
Partition the Array: Reorder the array so that all elements with values less than the pivot come before it, and all elements with values greater than the pivot come after it. The pivot is now in its final position.
Recursively Apply: Recursively apply the above steps to the sub-arrays formed by dividing the array at the pivot.

*/


/*
📦 Space Complexity:
Best/Average/Worst: O(n log n) auxiliary space due to recursion stack (best/avg cases), and O(n) for filtered arrays at each level of recursion.

Extra space used by .filter creates new arrays at each recursive level, and since each element appears once in every level of recursion:

👉 Total Space = O(n log n)
However, in Swift (due to copying arrays with filter), the hidden cost may feel closer to O(n²) in worst-case recursion depth.

⏱️ Time Complexity:
Let n be the number of elements.

Each call to .filter runs in O(n), and there are three filters: <, ==, and >.

At each recursive level, you process n elements (via filters).

If the array splits evenly every time (ideal case), there are log n levels.

➤ Best and Average Case:
Balanced partition → each recursive call halves the array.

T(n) = 2T(n/2) + O(n) → similar to Merge Sort.

➤ Time = O(n log n)

➤ Worst Case:
Unbalanced partition (e.g., when all elements are the same except one, or already sorted arrays).

One side is empty, other side has n-1 elements.

T(n) = T(n-1) + O(n) → triangular recursion depth.

➤ Time = O(n²)

✅ Summary:
Case	Time Complexity	Space Complexity
Best	O(n log n)	O(n log n)
Average	O(n log n)	O(n log n)
Worst	O(n²)	O(n²) (copying & stack)
*/
// When center element is Pivot and we apply filtring
func quickSortWhenCenterIsPivot(_ arr:  [Int]) -> [Int] {

    guard arr.count > 1 else {
        return arr
    }

    let center = arr[arr.count/2]
    let left = arr.filter {
        $0 < center
    }

    let right = arr.filter {
        $0 > center
    }

    let equal = arr.filter {
        $0 == center
    }

    return quickSortWhenCenterIsPivot(Array(left)) + Array(equal) + quickSortWhenCenterIsPivot(Array(right))

}


var arr = [4, 2, 7, 1]

print("Sorted array: \(quickSortWhenCenterIsPivot(arr))")


//When pivot is first element

func quickSortWhenFirstIsPivot(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    let pivot = arr[0]
    
    let left = arr.dropFirst().filter { $0 < pivot }
    let equal = arr.filter { $0 == pivot } // includes pivot and any equal values
    let right = arr.dropFirst().filter { $0 > pivot }

    return quickSortWhenFirstIsPivot(Array(left)) + equal + quickSortWhenFirstIsPivot(Array(right))
}





### 🔚 **QuickSort with Last Element as Pivot**


func quickSortWhenLastIsPivot(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    let pivot = arr[arr.count - 1]
    
    let left = arr.dropLast().filter { $0 < pivot }
    let equal = arr.filter { $0 == pivot } // includes pivot and any equal values
    let right = arr.dropLast().filter { $0 > pivot }

    return quickSortWhenLastIsPivot(Array(left)) + equal + quickSortWhenLastIsPivot(Array(right))
}
/*

---

### ✅ **Usage Example**:

```swift
let arr = [4, 2, 7, 1]
print("Sorted array: \(quickSortWhenLastIsPivot(arr))")
```

---

### 📊 **Complexity Summary** (Same as other pivot versions)

| Case    | Time       | Space      |
| ------- | ---------- | ---------- |
| Best    | O(n log n) | O(n log n) |
| Average | O(n log n) | O(n log n) |
| Worst   | O(n²)      | O(n²)      |

* **Worst case** happens when the array is already sorted (ascending or descending).
* **Not in-place** because it uses `.filter` and copies arrays.

---

Let me know if you'd like:

* An **in-place version using last element** (Lomuto partition scheme).
* A **benchmark comparison** between first, last, and center pivot versions.


/*


