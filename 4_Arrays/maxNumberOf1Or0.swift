func maxConsecutiveOnes(arr: [Int]) {
var currentCount = 0
var maxCount = 0

    // You will keep 2 varaibles one for current count and one for max when current value is 0. This method is not optmised as you need to focus on either 1 or 0
    for i in arr {
        if i == 0 {
            maxCount = max(maxCount, currentCount)
            currentCount = 0
        } else {
            currentCount += 1
        }
    }
    maxCount = max(maxCount, currentCount)
    print(maxCount)
}


maxConsecutiveOnes(arr: [0, 1, 0, 1, 1, 1, 1])


// Now we will use xor. so xor becomes 0 when 2 elements are same

func xorOptmisedSolution(arr: [Int]) {
    // currentCount is 1 as we will start from 1 and check every prev index with curr index
    var currentCount = 1
    var maxCount = 0

    for i in 1..<arr.count {
        if arr[i-1] ^ arr[i] == 0 {
            currentCount += 1
        } else {
            maxCount = max(maxCount,currentCount)
            currentCount = 1
        }
    }
    maxCount = max(maxCount,currentCount)
    print(maxCount)

}

xorOptmisedSolution(arr:  [0, 1, 0, 1, 1, 1, 1])

/*

⏱️ Time Complexity
O(n) — one pass through the array.

🧠 Space Complexity
O(1) — uses only two integer variables (currentCount, maxCount).

*/
