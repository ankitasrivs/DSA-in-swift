//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/maximize-arrii-of-an-array0026/1


func maxValueSum(_ arr: [Int]) -> Int {
    let MOD = 1_000_000_007
    let sortedArr = arr.sorted()

    var result = 0

    for i in 0..<sortedArr.count {
        result = (result + (sortedArr[i] * i) % MOD) % MOD
    }

    return result
}
