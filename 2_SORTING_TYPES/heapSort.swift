/*
Heap Sort is a comparison-based sorting algorithm that uses a binary heap data structure. Binary heaps are complete binary trees that satisfy the heap property:

Max-Heap: In a max-heap, for any given node i, the value of i is greater than or equal to the values of its children.
Min-Heap: In a min-heap, for any given node i, the value of i is less than or equal to the values of its children.
*/


/*
MAX HEAP
*/
func heapify(_ arr: inout [Int], n: Int, i: Int) {
    var largest = i
    let left = 2 * i + 1
    let right = 2 * i + 2

    if left < n && arr[left] > arr[largest] {
        largest = left
    }

    if right < n && arr[right] > arr[largest] {
        largest = right
    }

    if largest != i {
        arr.swapAt(i, largest)
        heapify(&arr, n: n, i: largest)
    }
}


func heapSort(_ arr: inout [Int]) {
    let n = arr.count

    for i in stride(from: (arr.count - 1)/2, through: 0, by: -1) {
        heapify(&arr, n: n, i: i)
    }

    for i in stride(from: arr.count - 1 , through: 0, by: -1) {
        arr.swapAt(0, i)
        heapify(&arr, n: i, i: 0)
    }
}


var arr = [7,34,2,1]
heapSort(&arr)
print(arr)
