// https://leetcode.com/problems/add-binary/description/


class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a2 = [Character]()
        var b2 = [Character]()
        var reversedResult = [Character]()
        var carry = false

        if a.count < b.count {
          a2 = Array(b).reversed()
          b2 = Array(a).reversed()
        } else {
          a2 = Array(a).reversed()
          b2 = Array(b).reversed()
        }

        for i in 0..<b2.count {
            if a2[i] == "1" && b2[i] == "1" {
                if carry {
                    reversedResult.append("1")
                } else {
                    reversedResult.append("0")
                    carry = true
                }
            } else if a2[i] == "0" && b2[i] == "0" {
                if carry {
                    reversedResult.append("1")
                    carry = false
                } else {
                    reversedResult.append("0")
                }
            } else {
                if carry {
                    reversedResult.append("0")
                } else {
                    reversedResult.append("1")
                }
            }
        }

        var position = b2.count

        while carry && (position < a2.count) {
            if a2[position] == "1" {
                reversedResult.append("0")
            } else {
                reversedResult.append("1")
                carry = false
            }

            position += 1
        }

        if carry && position == a2.count {
            reversedResult.append("1")
            carry = false
        } else {
            for i in position..<a2.count {
                reversedResult.append(a2[i])
            }
        }

        return String(reversedResult.reversed())
    }
}
