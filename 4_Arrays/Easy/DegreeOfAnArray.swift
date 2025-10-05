// https://leetcode.com/problems/degree-of-an-array/

class Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var freq = [Int: Int]()
        var first = freq
        var last = freq
  

        for i in 0..<nums.count {
            freq[nums[i], default: 0] += 1
            last[nums[i]] = i
            if  first[nums[i]] == nil {
            first[nums[i]] = i
            }
        }

              let degree = freq.values.max()!
        var minLen = nums.count

        for (k,v) in freq where v == degree {
            minLen = min(minLen, last[k]! - first[k]! + 1)
        }
        return minLen
    }
}
