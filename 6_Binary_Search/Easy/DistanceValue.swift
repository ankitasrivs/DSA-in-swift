
// https://leetcode.com/problems/find-the-distance-value-between-two-arrays/
class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
     let arr2 = arr2.sorted()
     var c = 0
     for i in arr1 {
    if !checkDistance(arr2, i, d) {
        c += 1
    }
     }
     return c

    }

    func checkDistance(_ arr2: [Int], _ num: Int, _ d: Int) -> Bool {
        var l = 0
        var h = arr2.count - 1

        while l <= h {
            let mid = (l+h)/2
            if abs(arr2[mid] - num) <= d {
                return true
            } else if arr2[mid] < num {
                l = mid + 1
            } else {
                h = mid - 1
            }
        }
        return false
    }
}
