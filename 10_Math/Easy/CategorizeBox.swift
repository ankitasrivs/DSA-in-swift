// https://leetcode.com/problems/categorize-box-according-to-criteria/

class Solution {
    func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {

        let maxVolume = Int(NSDecimalNumber(decimal: pow(10, 9)))
        let maxDimensions = Int(NSDecimalNumber(decimal: pow(10, 4)))
        let category = (bulky: length * width * height >= maxVolume || length >= maxDimensions || width >= maxDimensions || height >= maxDimensions, heavy: mass >= 100)

        switch true {
        case category.heavy && category.bulky:
            return "Both"
        case category.heavy:
            return "Heavy"
        case category.bulky:
            return "Bulky"
        default:
            return "Neither"
        }
    }
}
