

class Solution {
    // // two pointer approach - convert int to string to array
    // func isPalindrome(_ x: Int) -> Bool {
    //     var str = Array(String(x))
    //     var left = 0
    //     var right = str.count-1

    //     while left < right {
    //         if str[left] != str[right] {
    //             return false
    //         }
    //         left += 1
    //         right -= 1
    //     }

    //     return true
    // }

    // without converting to string/array
    // func isPalindrome(_ x: Int) -> Bool {
    //     // false if negative or ends in 0 (unless 0)
    //     if x < 0 || (x != 0 && x % 10 == 0) {
    //         return false
    //     }
        
    //     var original = x
    //     var reversed = 0

    //     // reverses only half digits
    //     while original > reversed {
    //         // shifts reversed one place to left and adds last digit of original
    //         reverse = reversed * 10 + original % 10
    //         // removes last digit from original
    //         original /= 10
    //     }

    //     // true if original == reversed
    //     // OR if it equals reversed/10 (handles odd length numbers)
    //     return original == reversed || original == reversed / 10
    // }

    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }

        var original = x
        var reversed = 0

        while original != 0 {
            let digit = original % 10
            reversed = reversed * 10 + digit
            original /= 10
        }

        return x == reversed
    }
}


