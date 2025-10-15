

https://leetcode.com/problems/find-the-town-judge/

class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
         guard n > 1 else { return 1 }
       var arr = Array(repeating: 0, count: n+1)
       for i in trust {
        arr[i[0]] -= 1
        arr[i[1]] += 1
       }
       for i in 0..<arr.count where arr[i] == n-1 {
        return i
       }
       return -1
    }
}
