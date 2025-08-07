/*
 https://www.geeksforgeeks.org/dsa/sort-array-wave-form-2/
 */
// Sort an array in wave form

func arrayInWaveForm(arr: inout [Int]) {
    for i in stride(from: 0, to: arr.count - 1, by: 2) {
        arr.swapAt(i, i+1)
    }
    print(arr)
}
var arr =  [1, 2, 3, 4, 5,6]
arrayInWaveForm(arr: &arr)


/*
 Time: O(n)
 Space: O(1)
 */
