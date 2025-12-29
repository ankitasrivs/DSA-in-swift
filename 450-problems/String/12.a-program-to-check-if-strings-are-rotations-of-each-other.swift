//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/dsa/a-program-to-check-if-strings-are-rotations-of-each-other/

func areRotations(_ s1: String, _ s2: String) -> Bool {
    if s1.count != s2.count {
        return false
    }

    let combined = s1 + s1
    return combined.contains(s2)
}
