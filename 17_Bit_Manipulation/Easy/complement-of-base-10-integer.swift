// https://leetcode.com/problems/complement-of-base-10-integer/submissions/1807587716/

class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
      var s = 1
    while s < n {
      s = (s << 1) | 1

    }
      return s - n
    }
}
