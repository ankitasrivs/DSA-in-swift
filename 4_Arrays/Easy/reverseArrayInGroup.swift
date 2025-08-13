/*
https://www.geeksforgeeks.org/dsa/reverse-an-array-in-groups-of-given-size/
*/

func reverseArray(arr: inout [Int], _ k: Int) {

    for i in stride(from: 0, to: arr.count, by: k) {
        var left = i
        var right = min(arr.count - 1, i+k-1)

        while left < right {
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}

var arr = [1, 2, 3, 4, 5, 6, 7, 8]
reverseArray(arr: &arr, 3)
print(arr)


/*
⏱️ Time Complexity
The outer loop runs n/k times (where n = arr.count)

For each group of size k, the inner while loop does at most k/2 swaps

So total number of operations:
≈ (n/k) * (k/2) = O(n)

✅ Final Time Complexity: O(n)

🧠 Space Complexity
No extra array or data structure used

Uses constant extra variables: left, right, i

✅ Final Space Complexity: O(1)
*/
