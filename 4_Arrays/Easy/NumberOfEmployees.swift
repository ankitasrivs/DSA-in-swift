// https://leetcode.com/problems/number-of-employees-who-met-the-target/description/

class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
       return  hours.filter {
        $0 >= target
       }.count ?? 0
    }
}
