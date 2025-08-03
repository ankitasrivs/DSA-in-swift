/*
Selection Sort is a comparison-based sorting algorithm. It sorts an array by repeatedly selecting the smallest (or largest) element from the unsorted portion and swapping it with the first unsorted element. This process continues until the entire array is sorted.

First we find the smallest element and swap it with the first element. This way we get the smallest element at its correct position.
Then we find the smallest among remaining elements (or second smallest) and swap it with the second element.
We keep doing this until we get all elements moved to correct position.

NOTE: After every iteration smallest element is sorted

The time and space complexity of Selection Sort are as follows:
Time Complexity:
Worst Case: O(N^2)
Average Case: O(N^2)
Best Case: O(N^2)
Selection Sort's time complexity remains consistently O(N^2) regardless of the initial arrangement of elements in the array. This is because it always performs a fixed number of comparisons and swaps. In each pass, it iterates through the unsorted portion of the array to find the minimum element and then swaps it into its correct position. This involves nested loops, leading to the quadratic complexity.
Space Complexity:
Worst Case: O(1)
Selection Sort is an in-place sorting algorithm, meaning it sorts the array without requiring significant additional memory. It only uses a constant amount of extra space for variables like loop counters and temporary storage during swaps, making its space complexity O(1).
*/


func selectionSort(_ arr: inout [Int]) {



    for i in 0..<arr.count - 1 {
        var minIndex = i
        for j in i+1..<arr.count {
            if arr[j] < arr[minIndex]{
                minIndex = j
            }
        }

        if minIndex != i {
            arr.swapAt(i, minIndex)
        }

    }

}


var arr = [4, 2, 7, 1]

selectionSort(&arr)

print("Sorted array: \(arr)")
