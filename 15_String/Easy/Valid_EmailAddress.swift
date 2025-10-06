// https://leetcode.com/problems/unique-email-addresses/

class Solution {
    
    /**
    solution:
    -iterate through emails
    -iterate through characters
    -once . is reached, remove .
    -once + is reached, remove + and all 
        characters until @ is reached
    */
    func numUniqueEmails(_ emails: [String]) -> Int {
        if emails.isEmpty {
            return 0
        }

        var resSet = Set<String>()

        for email in emails {
            var emailChars = Array(email)
            var aIndex = emailChars.firstIndex(where: { $0 == "@" })
            var leftChars = emailChars[0...((aIndex ?? 0) - 1)]
            
            var resLeftChars = Array<Character>()
            for char in leftChars {
                if char == "." {
                    continue
                }
                if char == "+" {
                    break
                }
                resLeftChars.append(char)
            }

            var rightChars = emailChars[(aIndex ?? 0)..<emailChars.count]
            var res = String(resLeftChars + rightChars)
            resSet.insert(res)
        }
        return resSet.count
    }
}
