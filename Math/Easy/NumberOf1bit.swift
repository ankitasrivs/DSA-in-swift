// https://leetcode.com/problems/number-of-1-bits/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
       return n.nonzeroBitCount
    }
}

//Time: O(1)
//Space: O(1)
// Since its an inbuilt function we will 

/*
In Swift (and most languages with C-style operators):

n << 1 → Left shift by 1

Moves all bits one position to the left.

Equivalent to multiplying n by 2 (for non-negative numbers, without overflow).

n >> 1 → Right shift by 1

Moves all bits one position to the right.

Equivalent to integer division by 2 (floor division for positive numbers).
*/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
      var n = n
      var res = 0
      while n != 0 {
        res += n & 1
        n >>= 1
      }
      return res
    }
}

//Time: O(n)
//Space: O(1)
