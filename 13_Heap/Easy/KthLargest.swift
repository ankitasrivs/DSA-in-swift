
// https://leetcode.com/problems/kth-largest-element-in-an-array/

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
      let minVal = nums.min()!
      let maxVal = nums.max()!
      var freq = Array(repeating: 0, count: maxVal - minVal + 1)

      for i in nums {
        freq[i-minVal] += 1
      }
      var rem = k

      for i in stride(from: freq.count - 1, through: 0, by: -1) {
        rem -= freq[i]
        if rem <= 0 {
            return i + minVal
        }
      }
      return -1
    }
}

/*
TIME; O(N)
Space: O(n)
*/
class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
       var queue = Heap(nums)
       for i in nums {
        if queue.count > k {
           queue.popMin()! 
        }
       }
      return queue.popMin()!
    }
}

/*
TIME; O(N)
Space: O(n)
*/
