//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/generate-ip-addresses/1

func restoreIpAddresses(_ s: String) -> [String] {
    var result = [String]()

    func backtrack(_ start: Int, _ path: [String]) {
        // Base case: 4 segments
        if path.count == 4 {
            if start == s.count {
                result.append(path.joined(separator: "."))
            }
            return
        }

        // Try segments of length 1,2,3
        for len in 1...3 {
            if start + len <= s.count {
                let startIndex = s.index(s.startIndex, offsetBy: start)
                let endIndex = s.index(startIndex, offsetBy: len)
                let segment = String(s[startIndex..<endIndex])

                if isValid(segment) {
                    backtrack(start + len, path + [segment])
                }
            }
        }
    }

    backtrack(0, [])
    return result
}

func isValid(_ segment: String) -> Bool {
    guard !segment.isEmpty else { return false }
    // Leading zero is not allowed unless segment is "0"
    if segment.count > 1 && segment.first == "0" { return false }
    if let num = Int(segment), num <= 255 {
        return true
    }
    return false
}
