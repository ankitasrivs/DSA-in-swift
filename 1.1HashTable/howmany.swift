class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for (i, value) in nums.sorted().enumerated() {
            if let val = dict[value]{

            } else {
                dict[value] = i
            }
        }
        return nums.map {
            dict[$0]!
        }
    }
}
