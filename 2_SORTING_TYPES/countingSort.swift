func binarySearch(arr: [Int]) {
    guard let minElem = arr.min(), let maxEl = arr.max() else {
        return
    }
    let range = maxEl - minElem + 1
    var countingArray = Array(repeating: 0, count: range)
    var outputArray = Array(repeating: 0, count: arr.count)

    for i in arr {
        countingArray[i - minElem] += 1
    }
    for i in 1..<range {
        // To make the every index represent how much elements are equal to or less than it
        countingArray[i] += countingArray[i - 1]
      }
    for number in arr.reversed() {
        let index = number - minElem
        // because array are 0 based so we cant start with 1
        countingArray[index] -= 1
        outputArray[countingArray[index]] = number
    }
    print(outputArray)

}

print(binarySearch(arr:  [-5, -10, 0, -3, 8, 5, -1, 10]))

