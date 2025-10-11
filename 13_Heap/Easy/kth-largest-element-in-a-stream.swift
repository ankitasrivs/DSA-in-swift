
// https://leetcode.com/problems/kth-largest-element-in-a-stream/

class KthLargest {
    private var heap: Heap<Int>
    private let k: Int

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.heap = Heap(nums)
    }
    
    func add(_ val: Int) -> Int {
        heap.insert(val)
        while heap.count > k { heap.removeMin() }
        return heap.min!
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */
