
//https://leetcode.com/problems/count-tested-devices-after-test-operations/
class Solution {
    func countTestedDevices(_ batteryPercentages: [Int]) -> Int {
        var countTestedDevices = 0
        var changeFactor = 0
        
        for i in batteryPercentages {
           if i + changeFactor > 0 {
                changeFactor -= 1
                countTestedDevices += 1
           }
        }
        
        return countTestedDevices
    }
}

//Time: O(n)
//Space: O(n)
