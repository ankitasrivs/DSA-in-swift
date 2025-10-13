// https://leetcode.com/problems/moving-average-from-data-stream/description/

class MovingAverage {
    private var size: Int
    private var window: [Int]
    private var sum: Int

    init(_ size: Int) {
        self.size = size
        self.window = []
        self.sum = 0
    }
    
    func next(_ val: Int) -> Double {
        // Add the new value
        window.append(val)
        sum += val
        
        // If window exceeds size, remove oldest value
        if window.count > size {
            sum -= window.removeFirst()
        }
        
        // Compute and return average
        return Double(sum) / Double(window.count)
    }
}
