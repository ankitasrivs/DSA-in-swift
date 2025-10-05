// https://leetcode.com/problems/can-place-flowers/

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 0
        var flowerbed = flowerbed // make mutable
        
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                let emptyLeft = (i == 0) || (flowerbed[i-1] == 0)
                let emptyRight = (i == flowerbed.count-1) || (flowerbed[i+1] == 0)
                
                if emptyLeft && emptyRight {
                    flowerbed[i] = 1
                    count += 1
                }
            }
        }
        
        return count >= n
    }
}
