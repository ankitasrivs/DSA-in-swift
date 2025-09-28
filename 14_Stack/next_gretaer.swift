
// https://leetcode.com/problems/next-greater-element-i/
class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nextGreater = [Int: Int]()
        var stack = [Int]()

        for n in nums2 {
            while let last = stack.last, last < n {
               nextGreater[stack.removeLast()] = n 
            }
            stack.append(n)
        }

        while let last = stack.last {
            nextGreater[stack.removeLast()] = -1
        }

        return nums1.map {
            nextGreater[$0]!
        }
        
    }
}


