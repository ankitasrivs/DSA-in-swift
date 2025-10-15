// https://leetcode.com/problems/furthest-point-from-origin/

class Solution {
    func furthestDistanceFromOrigin(_ moves: String) -> Int {
        var l=0, r=0
        for ch in moves {
            l += ch == "R" ? -1 : 1
            r += ch == "L" ? -1 : 1
        }
        return max(l,r)
    }
}
