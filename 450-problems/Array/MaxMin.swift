

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-minimum-and-maximum-element-in-an-array4428/1

func maxMin(arr: [Int]) {
    var maxNum = Int.min
    var minNum = Int.max

    for i in arr {
        if maxNum < i {
            maxNum = i
        }

        if minNum > i {
            minNum = i
        }
    }

    print(maxNum, minNum)
}


maxMin(arr: [1, 4, 3, -5, -4, 8, 6])
