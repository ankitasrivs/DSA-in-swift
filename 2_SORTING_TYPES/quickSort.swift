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

