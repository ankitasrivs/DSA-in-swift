
// https://leetcode.com/problems/two-out-of-three/
class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        let s1 = Set(nums1), s2 = Set(nums2), s3 = Set(nums3)
        return Array(Set(s1.intersection(s2).union(s2.intersection(s3)).union(s3.intersection(s1))))
    }
}
