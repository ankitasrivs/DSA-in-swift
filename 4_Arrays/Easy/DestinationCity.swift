
// https://leetcode.com/problems/destination-city/description/
class Solution {
       func destCity(_ paths: [[String]]) -> String {
    var start = Set<String>()
    for i in paths {
        start.insert(i[0])
    }

    for i in paths {
       if !start.contains(i[1]) {
        return i[1]
       }
    }
    return ""
       }
}
