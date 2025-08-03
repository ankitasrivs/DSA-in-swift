/*
The complexity of the Bubble Sort algorithm in Swift, as with other programming languages, is primarily characterized by its time and space complexity.
Time Complexity:
Worst-Case:
O(n²) - This occurs when the array is sorted in reverse order, requiring the maximum number of comparisons and swaps in each pass.
Average-Case:
O(n²) - For a randomly ordered array, the average performance remains quadratic.
Best-Case:
O(n) - This occurs when the array is already sorted. In this scenario, the algorithm can be optimized to detect that no swaps occurred in a pass, allowing it to terminate early after a single pass through the array. 
Space Complexity:
Worst-Case: O(1) - Bubble Sort is an in-place sorting algorithm, meaning it only requires a constant amount of additional space for temporary variables during the swapping process, regardless of the input size.
Summary:
While Bubble Sort is straightforward to understand and implement in Swift, its quadratic time complexity in most cases makes it inefficient for sorting large datasets. It is generally more suitable for small arrays or those that are nearly sorted, where simplicity and minimal overhead are prioritized over raw performance.
*/

func bubbleSort(_ arr: inout [Int]) {

var swapped = false
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            if arr[j] > arr[j+1] {
                swapped = true
                arr.swapAt(j, j+1)
            }
        }
        if !swapped {
            return
        }
    }


}


var arr = [4, 2, 7, 1]

bubbleSort(&arr)

print("Sorted array: \(arr)")

