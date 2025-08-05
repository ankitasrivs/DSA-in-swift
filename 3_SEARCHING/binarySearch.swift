func binarySearch(arr: [Int], element: Int) -> Int {

  var low = 0

    var high = arr.count - 1

    while low <= high {
        let mid = (low+high)/2
        if arr[mid] == element {
            return mid
        } else if arr[mid] < element {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return -1
}

print(binarySearch(arr: [1,2,3,4,21,90], element: 41))

