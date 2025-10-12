// https://leetcode.com/problems/kth-missing-positive-number/description/


  class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var left = 0
        var right = arr.count - 1

        while left <= right {
            let mid = left + (right - left) / 2
            let missing = arr[mid] - (mid + 1)

            if missing < k {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        // kth missing number is just: left + k
        return left + k
    }
}
