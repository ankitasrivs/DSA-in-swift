
// https://leetcode.com/problems/reformat-phone-number/
class Solution {
    func reformatNumber(_ number: String) -> String {
        // Step 1: Clean the string (keep only digits)
        let digits = number.filter { $0.isNumber }
        var result: [String] = []
        var i = 0
        let n = digits.count
        
        // Step 2: Build groups
        while n - i > 4 {
            let start = digits.index(digits.startIndex, offsetBy: i)
            let end = digits.index(start, offsetBy: 3)
            result.append(String(digits[start..<end]))
            i += 3
        }
        
        // Step 3: Handle remaining digits
        let remaining = n - i
        let start = digits.index(digits.startIndex, offsetBy: i)
        let remainder = String(digits[start...])
        
        if remaining == 4 {
            // Split last 4 digits as 2-2
            let mid = remainder.index(remainder.startIndex, offsetBy: 2)
            result.append(String(remainder[..<mid]))
            result.append(String(remainder[mid...]))
        } else {
            // Remaining 2 or 3 digits
            result.append(remainder)
        }
        
        return result.joined(separator: "-")
    }
}
