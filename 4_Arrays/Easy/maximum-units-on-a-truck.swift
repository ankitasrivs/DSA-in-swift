// https://leetcode.com/problems/maximum-units-on-a-truck/description/

class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        var result = 0
        let boxTypes = boxTypes.sorted {
            $0[1] > $1[1]
        }
        var remainder = truckSize
        for i in boxTypes {
            if remainder > 0 {
            result += min(remainder,i[0]) * i[1]
            remainder -= i[0]
        } else {
            break
        }
      
    }
      return result
    }
}
