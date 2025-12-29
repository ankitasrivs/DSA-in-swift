//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/find-first-repeated-word-string/

func firstRepeatedWord(_ s: String) -> String {
    let words = s.split(separator: " ").map { String($0) }
    var seen = Set<String>()

    for word in words {
        if seen.contains(word) {
            return word
        }
        seen.insert(word)
    }

    return "No Repetition"
}


