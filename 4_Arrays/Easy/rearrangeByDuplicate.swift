// https://www.geeksforgeeks.org/dsa/insert-an-adjacent-k-in-place-for-every-occurrence-of-it-in-the-array-keeping-the-size-of-the-array-intact/#approach-using-two-pointer-technique

func rearangeArray(arr: inout [Int], k: Int) {
    var originalSize = arr.count
    var i = 0

    while i < originalSize {
        if arr[i] == k {
            arr.insert(k, at: i)
            i += 2
        } else {
            i += 1
        }
    }
    print(Array(arr[0...originalSize-1]))
}
var arr = [1,0,2,3,0,4,5,0]
rearangeArray(arr: &arr, k: 0)


/*
 Time: O(n)
 Space: O(1)
 */
