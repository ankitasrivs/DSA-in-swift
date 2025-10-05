

class Solution {
    func dayOfYear(_ date: String) -> Int {
        let date = date.split(separator:"-").map(String.init).compactMap(Int.init)
        let (y,m,d) = (date[0], date[1], date[2])
        let isLeapYear = y % 4 == 0 && y != 1900
        var months = [0,31,28,31,30,31,30,31,31,30,31,30,31]
        months[2] += isLeapYear ? 1:0
        return months[..<m].reduce(d,+)
    }
}
