
// https://www.geeksforgeeks.org/dsa/missing-ranges-of-numbers/
func missingRanges(arr: [Int], low: Int, high: Int) {
var res = [(Int, Int)]()
    if low < arr[0] {
        res.append((low, arr[0] - 1))
    }

    for i in 0..<arr.count - 1 {
        if arr[i+1] - arr[i] > 1 {
            res.append((arr[i] + 1, arr[i+1] - 1))
        }
    }

    if high > arr.last! {
        res.append((arr.last! + 1, high))
    }
    print(res)
}

missingRanges(arr: [14, 15, 20, 30, 31, 45], low: 10, high: 50)

/*
Time: O(n)
Space: O(n)
*/
