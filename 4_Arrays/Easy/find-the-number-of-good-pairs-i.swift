// https://leetcode.com/problems/find-the-number-of-good-pairs-i/

class Solution {
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        var res = 0
        var dict = [Int: Int]()
        for i in nums2 {
            dict[i*k, default: 0] += 1
        }

        for i in nums1 {
            for (divisor, count) in dict {
                if i % divisor == 0 {
                    res += count
                }
            }
        }

        return res
    }
}
