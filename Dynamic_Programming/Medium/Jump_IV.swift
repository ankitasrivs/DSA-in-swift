
//https://leetcode.com/problems/jump-game-vi/
class Solution {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        var dp = Array(repeating: 0, count: nums.count)
          var deque = [Int]()
        var deque_first_index = 0
         dp[0] = nums[0]
        deque.append(0)

        for i in 1..<nums.count {
            if deque[deque_first_index] < i - k {
                deque_first_index += 1
            }
            
            dp[i] = nums[i] + dp[deque[deque_first_index]]
            
            while deque_first_index < deque.count && dp[i] >= dp[deque.last!] {
                deque.removeLast()
            }

            deque.append(i)
        }

        return dp[nums.count - 1]
    }
}

// Time; O(n)
//Space; O(n)
