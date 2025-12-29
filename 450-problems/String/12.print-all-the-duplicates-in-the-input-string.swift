//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/print-all-the-duplicates-in-the-input-string/

func duplicateCharacters(_ s: String) -> [[Any]] {
    var freq = [Character: Int]()

    // Count frequency
    for ch in s {
        freq[ch, default: 0] += 1
    }

    // Filter duplicates
    var res = [[Any]]()
    for (ch, count) in freq {
        if count > 1 {
            res.append([ch, count])
        }
    }

    return res
}
