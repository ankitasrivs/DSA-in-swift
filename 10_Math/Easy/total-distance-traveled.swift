
// https://leetcode.com/problems/total-distance-traveled/
class Solution {
    func distanceTraveled(_ mainTank: Int, _ additionalTank: Int) -> Int {
        // total distance traveled in km
        var total = 0
        
        // mutable copies of tanks
        var mainTank = mainTank
        var additionalTank = additionalTank
        
        // ⛽️ Each time we consume 5 liters from the main tank,
        // we get 1 extra liter from the additional tank (if available)
        while mainTank >= 5 {
            // Use 5 liters → each liter gives 10 km
            total += 5 * 10
            
            // Consume those 5 liters
            mainTank -= 5
            
            // If additional tank still has fuel, move 1 liter into main tank
            if additionalTank > 0 {
                mainTank += 1
                additionalTank -= 1
            }
        }
        
        // After the loop, use up any remaining fuel in main tank
        total += mainTank * 10
        
        // Return total distance in kilometers
        return total
    }
}
