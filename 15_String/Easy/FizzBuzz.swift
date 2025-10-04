// https://leetcode.com/problems/fizz-buzz/description/

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                res.append("FizzBuzz")
            } else if i % 3 == 0 {
                res.append("Fizz")
            } else if i % 5 == 0 {
                res.append("Buzz")
            } else {
                res.append("\(i)")
            }
        }
        return res
    }
}
