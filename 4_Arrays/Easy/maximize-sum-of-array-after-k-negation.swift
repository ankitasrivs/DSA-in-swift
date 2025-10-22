// https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/

class Solution {
    func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var arr = nums.sorted()                     // sort ascending
        var k = k
        
        // 1) Flip negatives while k > 0
        for i in 0..<arr.count {
            if k > 0 && arr[i] < 0 {
                arr[i] = -arr[i]
                k -= 1
            } else {
                break
            }
        }
        
        // 2) Now arr is mostly non-negative. Sort (or we can track min) to find the smallest absolute value:
        arr.sort()
        
        // 3) If k is odd, need to flip smallest absolute value
        if k % 2 == 1 {
            arr[0] = -arr[0]
        }
        
        // 4) Sum and return
        return arr.reduce(0, +)
    }
}
