// https://leetcode.com/problems/meeting-rooms/description/

class Solution {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        // Sort intervals by start time
        let sorted = intervals.sorted { $0[0] < $1[0] }

        // Compare adjacent meetings
        for i in 1..<sorted.count {
            if sorted[i][0] < sorted[i - 1][1] {
                // Overlap found
                return false
            }
        }

        return true
    }
}
