// https://leetcode.com/problems/maximum-population-year/

class Solution {
    func maximumPopulation(_ logs: [[Int]]) -> Int {
        
        var ps = Array(repeating: 0, count: 102)
      
      for ds in logs {
          let birth = ds[0] - 1950
        let death = ds[1] - 1950
          ps[birth] += 1
          ps[death] -= 1
      }
   
     var curr = 0
     var maxPop = 0
     var resultYear = 0

     for (i, res) in ps.enumerated() {
        curr += res
        if maxPop < curr {
            maxPop = curr
            resultYear = 1950 + i
        }
     }
     return resultYear
    }
}
