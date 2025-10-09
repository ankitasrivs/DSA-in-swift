https://leetcode.com/problems/find-the-child-who-has-the-ball-after-k-seconds/

class Solution {
    func numberOfChild(_ n: Int, _ k: Int) -> Int {
      var pointer = 0
      var reverse = true

      for i in 1...k {
        if pointer == 0 || pointer == n - 1 {
            reverse = !reverse
        }
        if !reverse {
             pointer += 1
        } else {
            pointer -= 1
        }
      }
    return pointer
    }
}
