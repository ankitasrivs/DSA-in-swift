https://leetcode.com/problems/divide-a-string-into-groups-of-size-k/submissions/1802451919/

class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        var output = [String]()
        var sm = s
        while !sm.isEmpty {
            if sm.count >= k {
                output.append(String(sm.prefix(k)))
                sm.removeFirst(k)
            } else {
                let fillCount = k - sm.count
                let fill = String(Array(repeating: fill, count: fillCount))
                sm.append(fill)
                output.append(sm)
                break
            }
        }
        return output
    }
}
