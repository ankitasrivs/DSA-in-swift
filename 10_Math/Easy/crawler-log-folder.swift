// https://leetcode.com/problems/crawler-log-folder/

class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var operation = 0
        for i in logs {
            if i.contains("../") {
                if operation > 0 {
                operation -= 1
                }
            } else if i.contains("./") {

            } else {
                operation += 1 
            }
        
        }


        return abs(operation)
    }
}
