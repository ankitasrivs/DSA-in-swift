// https://leetcode.com/problems/truncate-sentence/

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
    var res = [Character]()
    var k1 = 0
    for i in s where k != k1 {
        if i.isWhitespace  {
            if k1 == k - 1 {
                 break
            }
            k1 += 1
        }
        res.append(i)
    }
    return String(res)

    }
}

// Time: O(n)
//Space: O(n)
