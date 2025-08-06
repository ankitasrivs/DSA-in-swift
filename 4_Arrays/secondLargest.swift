// Find second largest element in array


func secondLargest(arr: [Int]) {
    guard arr.count >= 2 else {
        print("Array must have at least 2 elements")
        return
    }

    var firstLargest = Int.min
    var secondLargest = Int.min

    for num in arr {
        if num > firstLargest {
            secondLargest = firstLargest
            firstLargest = num
        } else if num > secondLargest && num != firstLargest {
            secondLargest = num
        }
    }

    if secondLargest == Int.min {
        print("No second largest found")
    } else {
        print(secondLargest)
    }
}


/*
| Metric          | Value                                           |
| --------------- | ----------------------------------------------- |
| **Time**        | O(n)                                            |
| **Space**       | O(1)                                            |


*/
