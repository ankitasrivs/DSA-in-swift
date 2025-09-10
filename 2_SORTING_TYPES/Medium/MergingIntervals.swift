// https://leetcode.com/problems/merge-intervals/description/
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
    let intervals = intervals.sorted { $0[0] < $1[0] }
    var newIntervals = [intervals[0]]
    
    for i in 1..<intervals.count {
        if intervals[i][0] <= newIntervals.last![1] {
            newIntervals[newIntervals.count - 1][1] = max(newIntervals.last![1], intervals[i][1])
        } else {
            newIntervals.append(intervals[i])
        }
    }
    
    return newIntervals
    }
}

/*
time: o(nlogn)
space: o(n)
*/
