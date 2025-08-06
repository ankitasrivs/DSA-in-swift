func radixSort(arr: [Int]) -> [Int] {
    guard let maxElement = arr.max() else {
        return arr
    }
    var arr = arr
    var place = 1
    while maxElement/place > 0 {
        arr = countingSort(arr: arr, place: place)
        place *= 10
    }

    return arr
}

func countingSort(arr: [Int], place: Int) -> [Int] {
    var ouputArray = Array(repeating: 0, count: arr.count)
    var countingArray = Array(repeating: 0, count: 10)
    for i in arr {
        let dig = (i/place) % 10
        countingArray[dig] += 1
    }

    for i in 1..<countingArray.count {
        countingArray[i] += countingArray[i-1]
    }

    for num in arr.reversed() {
        let dig = (num / place) % 10
        countingArray[dig] -= 1
        ouputArray[countingArray[dig]] = num
    }


    return ouputArray
}

print(radixSort(arr: [170, 45, 75, 90, 802, 24, 2, 66]))

