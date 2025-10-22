// https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var prices = prices
        for i in 0..<prices.count {
            for j in (i+1)..<prices.count {
                if prices[i] >= prices[j] {
                    prices[i] -= prices[j]
                    break
                }
            }
        }
        return prices
    }
}
