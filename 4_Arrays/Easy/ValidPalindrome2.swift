// https://leetcode.com/problems/valid-palindrome-ii/

  final class Solution {
    private func isPalindrome(_ a: [UInt8], _ i0: Int, _ j0: Int) -> Bool {
      var i = i0, j = j0
      while i < j {
        if a[i] != a[j] { return false }
        i += 1
        j -= 1
      }
      return true
    }

    func validPalindrome(_ s: String) -> Bool {
      let a = Array(s.utf8)  // safe for LeetCode’s lowercase a–z
      var i = 0
      var j = a.count - 1

      while i < j {
        if a[i] != a[j] {
          // try skipping either side once
          return isPalindrome(a, i, j - 1) || isPalindrome(a, i + 1, j)
        }
        i += 1
        j -= 1
      }
      return true
    }
  }
