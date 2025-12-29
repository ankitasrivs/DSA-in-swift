//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-first-repeated-character4108/1

func firstRepeatedCharacter(_ s: String) -> Character? {
    var firstIndex = [Character: Int]()
    var minSecondIndex = Int.max
    var result: Character? = nil

    for (i, ch) in s.enumerated() {
        if let firstOccur = firstIndex[ch] {
            // Repeated character
            if i < minSecondIndex {
                minSecondIndex = i
                result = ch
            }
        } else {
            firstIndex[ch] = i
        }
    }

    return result
}

