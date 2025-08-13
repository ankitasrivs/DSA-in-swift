// Also known as dutch problem
// https://www.geeksforgeeks.org/dsa/sort-an-array-of-0s-1s-and-2s/
func dutchProlem(arr: inout [Int]) {
    var mid = 0
    var low = 0
    var high = arr.count - 1

    while mid <= high {
        switch arr[mid] {
        case 0 :
            arr.swapAt(low, mid)
            mid += 1
            low += 1
        case 1:
            mid += 1
        default:
            arr.swapAt(mid, high)
            high -= 1
        }
    }
}

var arr =  [0, 1, 2, 0, 1, 2]
dutchProlem(arr: &arr)
print(arr)

/*
Time: O(n)
Space: O(1)
*/
