//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/union-of-two-arrays3538/1

func union(_ a: [Int], _ b: [Int]) -> [Int] {
    var set = Set<Int>()
    for x in a { set.insert(x) }
    for x in b { set.insert(x) }
    return Array(set)
}


func intersection(_ a: [Int], _ b: [Int]) -> [Int] {
    let setA = Set(a)
    var result = Set<Int>()
    for x in b {
        if setA.contains(x) {
            result.insert(x)
        }
    }
    return Array(result)
}
