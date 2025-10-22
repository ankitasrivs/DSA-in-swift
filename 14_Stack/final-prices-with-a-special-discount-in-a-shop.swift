// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
    var arr = prices
    var stack = [Int]()
   
    for i in (0..<prices.count).reversed() {
        while stack.count > 0 && prices[stack.last!] > prices[i] {
            stack.removeLast()
              
        }
        if stack.count > 0 {
            arr[i] -= prices[stack.last!]
                    
        }
        
        stack.append(i)
    }
    return arr
    }
}
