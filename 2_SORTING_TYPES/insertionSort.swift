/*
Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. However, it has some advantages:
Simple implementation: It is one of the simplest sorting algorithms to implement.
Efficient for small data sets: It is efficient for small data sets, especially when the data is already partially sorted.
Stable: It maintains the relative order of equal elements.
In-place: It requires a minimal amount of auxiliary space (O(1)).
How Insertion Sort Works:
The algorithm virtually divides the input array into two parts: a sorted part and an unsorted part. Initially, the first element of the array is considered the sorted part, and the rest is the unsorted part. The algorithm then iteratively takes elements from the unsorted part and inserts them into their correct position within the sorted part.

*/


func insertionSort(_ arr: inout [Int]) {



    for i in 1..<arr.count{
        var j = i
        while j > 0 && arr[j] < arr[j-1] {
            arr.swapAt(j, j-1)
            j -= 1
        }
    }
}


var arr = [4, 2, 7, 1]

insertionSort(&arr)

print("Sorted array: \(arr)")
