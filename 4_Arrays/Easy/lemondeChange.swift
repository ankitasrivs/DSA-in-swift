// https://leetcode.com/problems/lemonade-change/

class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fives = 0
        var tens = 0
        for i in bills {
            if i == 5 {
                fives += 1  
            } else if i == 10 {
                if fives <= 0 {
                    return false
                }
                fives -= 1
                tens += 1
            } else {
                if tens > 0 && fives > 0 {
                    fives -= 1
                    tens -= 1
                } else if fives >= 3 {
                    fives -= 3
                } else {
                    return false
                }
            }
            }
             return true
        }
       
    }
