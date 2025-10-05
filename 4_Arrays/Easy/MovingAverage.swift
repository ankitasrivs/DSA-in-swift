// https://leetcode.com/problems/moving-average-from-data-stream/description/

class MovingAverage {
    private var queue: [Int] = []
    private var size: Int
    private var sum: Double = 0

    init(_ size: Int) {
        self.size = size
    }
    
    func next(_ val: Int) -> Double {
        queue.append(val)
        sum += Double(val)

        if queue.count > size {
            sum -= Double(queue.removeFirst())
        }
        
        return sum / Double(queue.count)
    }
}
