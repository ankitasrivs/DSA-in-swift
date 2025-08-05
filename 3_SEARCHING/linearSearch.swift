func linearSearch(arr: [Int], element: Int) -> Int {

    for i in 0..<arr.count {
        if arr[i] == element {
            return i
        }
    }

    return -1
}

linearSearch(arr: [1,2,3,4,21,90], element: 4)
