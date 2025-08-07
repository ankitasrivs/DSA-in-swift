/*
https://www.geeksforgeeks.org/dsa/move-zeroes-end-array/
*/
func moveZeroToEnd(arr: inout [Int]) {
var current = 0

    for i in 0..<arr.count {
        if arr[i] != 0 {
            arr.swapAt(i, current)
            current += 1
        }
    }
}

var arr = [0, 1, 0, 1, 1, 1, 1]
moveZeroToEnd(arr: &arr)
print(arr)


/*
⏱️ Time Complexity
The loop runs once through the array → O(n)

Each non-zero element may involve one swapAt → at most n swaps.

Hence, overall time complexity: O(n)

🧠 Space Complexity
In-place operation: no extra data structures used.

Only current index variable → O(1) space.
*/
