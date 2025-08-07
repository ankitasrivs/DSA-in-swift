
// https://www.geeksforgeeks.org/dsa/third-largest-element-array-distinct-elements/
func thirdLargest(arr: [Int]) {
    var secondLargest = Int.min
    var firstLargest = Int.min
    var thirdLargest = Int.min
    for i in 0..<arr.count {
        if arr[i] > firstLargest {
            thirdLargest = secondLargest
            secondLargest = firstLargest
            firstLargest = arr[i]
        } else if secondLargest < arr[i] && arr[i] != firstLargest {
            thirdLargest = secondLargest
            secondLargest = arr[i]
        } else if thirdLargest < arr[i] && arr[i] != secondLargest && arr[i] != firstLargest {
            thirdLargest = arr[i]
        }
    }
    print(thirdLargest)
}

thirdLargest(arr: [1, 14, 2, 16, 10, 20, 16,20])
