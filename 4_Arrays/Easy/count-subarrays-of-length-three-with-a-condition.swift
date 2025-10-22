
// https://leetcode.com/problems/count-subarrays-of-length-three-with-a-condition/
class Solution {
    func countSubarrays(_ nums: [Int]) -> Int {
        let n = nums.count - 2
        var answer = 0
        for i in 0..<n {
            if nums[i + 1] % 2 == 0 && nums[i] + nums[i + 2] == nums[i + 1] / 2 {
                answer += 1
            }
        }
        return answer
    }
}
