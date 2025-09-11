// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
      var maxH = prices[prices.count - 1]
      var maxProfit = 0

      for i in (0..<(prices.count - 1)).reversed() {
            if prices[i] < maxH {
                maxProfit = max(maxProfit, maxH - prices[i])
            }
            maxH = max(prices[i], maxH)
      }
      return maxProfit
    }
}

// Time: O(n)
//Space: O(1)
