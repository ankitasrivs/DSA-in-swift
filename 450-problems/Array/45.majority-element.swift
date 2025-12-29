//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems///
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/majority-element-1587115620/1


func majoryElement(_ arr: [Int]) -> Int {
    var count = 0
    var candidate = -1

    for num in arr {
        if count == 0 {
            candidate = num
            count += 1
        } else if candidate == num {
            count += 1
        } else {
            count -= 1
        }
    }

    var freq = 0

    for i in arr where i == candidate {
        freq += 1
    }
    return freq > arr.count/2 ? candidate : -1
}


print(majoryElement([7]))
-1587115620/1


func majoryElement(_ arr: [Int]) -> Int {
    var count = 0
    var candidate = -1

    for num in arr {
        if count == 0 {
            candidate = num
            count += 1
        } else if candidate == num {
            count += 1
        } else {
            count -= 1
        }
    }

    var freq = 0

    for i in arr where i == candidate {
        freq += 1
    }
    return freq > arr.count/2 ? candidate : -1
}


print(majoryElement([7]))
