//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/isomorphic-strings-1587115620/1

func areIsomorphic(_ s1: String, _ s2: String) -> Bool {
    guard s1.count == s2.count else { return false }

    var map1 = [Character: Character]()
    var map2 = [Character: Character]()

    for (c1, c2) in zip(s1, s2) {
        if let mapped = map1[c1] {
            if mapped != c2 { return false }
        } else {
            map1[c1] = c2
        }

        if let mapped = map2[c2] {
            if mapped != c1 { return false }
        } else {
            map2[c2] = c1
        }
    }

    return true
}

