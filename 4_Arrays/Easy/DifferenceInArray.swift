// https://leetcode.com/problems/find-the-difference-of-two-arrays/

class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var setNums1 = Set(nums1)
        var setNums2 = Set(nums2)
        
        let isNums1Longer = setNums1.count > setNums2.count
        
        let first = isNums1Longer ? setNums1 : setNums2
        let second = isNums1Longer ? setNums2 : setNums1

        let arr2 = Array(second)
        
        for i in 0 ..< arr2.count {
            let value = arr2[i]
            if first.contains(value) {
                setNums1.remove(value)
                setNums2.remove(value)
            }
        }
       return [Array(setNums1), Array(setNums2)]
    }
}
