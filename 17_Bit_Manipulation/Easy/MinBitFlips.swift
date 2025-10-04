
// https://leetcode.com/problems/minimum-bit-flips-to-convert-number/
class Solution {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
       return (start^goal).nonzeroBitCount
    }
}
