// https://leetcode.com/problems/bulb-switcher

class Solution {
    func bulbSwitch(_ n: Int) -> Int {
        guard n > 1 else { return n }

        return Int(sqrt(Double(n)))
    }
}



// Perfect sqare has odd divisor and number of perfect square is sqrt of that number
