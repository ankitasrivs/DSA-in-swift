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

