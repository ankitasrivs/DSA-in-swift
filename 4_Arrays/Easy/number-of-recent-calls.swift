//https://leetcode.com/problems/number-of-recent-calls/

class RecentCounter {
    private var time : [Int] = []
    private var head : Int = 0
    
    func ping(_ t: Int) -> Int {
        time.append(t)
        while time.count > head && t - time[head] > 3000 {
            head += 1
        }
        return time.count - head
    }
}
