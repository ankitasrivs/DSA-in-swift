// https://www.geeksforgeeks.org/dsa/binary-search/
func binarySearch(arr: [Int], x: Int) {
var low = 0
    var high = arr.count - 1

    while low <= high {
        let middle = (low + high)/2
        if arr[middle] == x {
            print(middle)
            return
        } else if arr[middle] > x {
            high = middle - 1
        } else {
            low = middle + 1
        }
    }

    print(-1)
}

func binarySearchrecursive(arr: [Int], x: Int, low: Int, high: Int) -> Int {
    if low > high {
        return -1
    }
        let middle = (low + high)/2
        if arr[middle] == x {
            print(middle)
            return middle
        } else if arr[middle] > x {
            return  binarySearchrecursive(arr: arr, x: x, low: low, high: middle - 1)
        } else {
            return  binarySearchrecursive(arr: arr, x: x, low: middle + 1, high: high)
        }

}


binarySearch(arr: [1,2,3,4,5], x: 4)
let f = binarySearchrecursive(arr: [1,2,3,4,5], x: 4, low: 0, high: 4)
