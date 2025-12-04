

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/minimum-number-of-jumps-1587115620/1

func minimumJumps(arr: [Int]) -> Int {
var curr = 0
var farthest = 0
var jumps = 0

    for i in 0..<arr.count {
      //  print("111111", i, arr[i], farthest, curr)
        farthest = max(farthest, arr[i] + i)
        if i == curr {
          //  print("2222", i, arr[i], farthest, curr)
            curr = farthest
            jumps += 1

            if curr >= arr.count - 1 {
                return jumps
            }
        }

        if i > farthest {
            return -1
        }
    }
    return -1
}

var arr =   [1, 4, 3, 2, 6, 7]
print(minimumJumps(arr: arr))
//print(arr)
// Time: O(n)
//Space: O(1)
