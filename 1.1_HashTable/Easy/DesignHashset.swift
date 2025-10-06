// https://leetcode.com/problems/design-hashset/

class MyHashSet {
    private var data = [Bool](repeating: false, count: 1000001)

    func add(_ num: Int) {
        data[num] = true
        
    }

    func contains(_ num: Int) -> Bool {
        return  data[num]
    }

    func remove(_ num: Int) {
        data[num] = false
    }
}
