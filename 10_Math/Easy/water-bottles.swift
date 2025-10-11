// https://leetcode.com/problems/water-bottles/

class Solution {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
      var res = numBottles
      var numBottles = numBottles

     while numBottles >= numExchange {
        let d = numBottles / numExchange
        res += d
        let f = numBottles % numExchange
        numBottles = d + f

     }

     return res

    }
}
