class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
      var g = g.sorted()
      var s = s.sorted()
      var count = 0
      var j = 0

      for i in 0..<g.count {
        while j < s.count && s[j] < g[i] {
            j += 1
        }
        if j < s.count && s[j] >= g[i] {
            count += 1
            j += 1
        }
      }

      return count
    }
}

// Time: O(n log n)
//Space: O(n)
