// https://leetcode.com/problems/minimum-absolute-difference/submissions/1796266711/


class Solution {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        let arr = arr.sorted()
        var result = [[Int]]()
        var minDiff = Int.max
        
        for i in 0..<arr.count - 1 {
            let diff = arr[i + 1] - arr[i]
            
            if diff < minDiff {
                minDiff = diff
                result = [[arr[i], arr[i + 1]]]
            } else if diff == minDiff {
                result.append([arr[i], arr[i + 1]])
            }
        }
        return result
    }
}
