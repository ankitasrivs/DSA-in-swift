

struct Item: Comparable {
    let value: Int
    let index: Int

    // Define custom ordering
    static func < (lhs: Item, rhs: Item) -> Bool {
        return lhs.value < rhs.value
    }
}

class Solution {
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {

        var heap = Heap<Item>()
        for (index, value) in nums.enumerated() {
            heap.insert(Item(value: value, index: index))
            if heap.count > k {
                heap.removeMin()
            }
        }

        let k = heap.unordered

        let topK = k.sorted {$0.index < $1.index}
        return topK.map {$0.value}
    }
}

/*
3️⃣ Overall complexity

Heap operations: O(n log k)

Sorting top k: O(k log k)

Mapping: O(k)

Total complexity:
*/
//Time: O(nlogk+klogk)

//Space complexity: O(k) for the heap.
