// https://leetcode.com/problems/contains-duplicate-ii/submissions/1796364615/

class Solution {

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
       if nums.count < 2 || k < 1 {
            return false
        }
    var dict:[Int:Int] = [:]
    for i in 0..<nums.count{
      
            if let dictVal = dict[nums[i]],
             abs(i - dictVal) <= k {
                return true
            }
                dict[nums[i]] = i
        
}
  return false

}
}
