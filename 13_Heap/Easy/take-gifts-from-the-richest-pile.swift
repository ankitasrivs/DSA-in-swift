// https://leetcode.com/problems/take-gifts-from-the-richest-pile/

class Solution {
    func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
        var gifts = Heap(gifts)
        for i in 1...k {
         let v = Int(sqrt(Double(gifts.popMax()!)))
          gifts.insert(v)
        }
        return gifts.unordered.reduce(0,+)
    }
}
