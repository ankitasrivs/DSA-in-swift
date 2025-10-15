
https://leetcode.com/problems/reformat-date/description/
class Solution {
    func reformatDate(_ date: String) -> String {
       var monthList = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"] 
       var year = ""
       var month = ""
       var day = ""
       for i in date.reversed() {
        if year.count < 4 {
            year = String(i) + year
        } else if month.isEmpty {
            var m = Array(date)
            m = Array(m[m.count-8...m.count-6])
            let f = monthList.firstIndex(where : { $0 == String(m)})!
            month = "\(f+1)"
        } else if i.isNumber {
            day = String(i) + day
        }
       }
       if day.count == 1 {
        day = "0" + day
       }
       if month.count == 1 {
        month = "0" + month
       }

return year + "-" + month + "-" + day
    }
}
