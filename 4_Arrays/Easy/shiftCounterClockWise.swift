//Left
func counterClockwiseShift(arr: inout [Int], d: Int) {
    arr = Array(arr[0...d-1]).reversed() + Array(arr[d...])
    arr = Array(arr[0...d-1]) + Array(arr[d...]).reversed()
    arr = arr.reversed()
    print(arr)
}

var arr = [1, 2, 3, 4, 5, 6]
//counterClockwiseShift(arr: &arr, d: 2)

//Time: O(n)


// As its not in place because we are generating new array to inplace (no new array is created we will update a little bit)


func counterClockwiseShiftOptimised(arr: inout [Int], d: Int) {
    let n = arr.count
      arr[0..<d].reverse()
      arr[d..<n].reverse()
      arr.reverse()
    print(arr)
}


counterClockwiseShiftOptimised(arr: &arr, d: 2)

/*

 | Version                      | In-Place | Time | Space |
 | ---------------------------- | -------- | ---- | ----- |
 | **First version**             | ❌        | O(n) | O(n)  |
 | **In-place version (above)** | ✅        | O(n) | O(1)  |

 */
