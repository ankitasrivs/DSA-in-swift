

//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/cyclically-rotate-an-array-by-one2614/1

func rotateArray(nums:  inout [Int], k: Int) {
    let n = nums.count
    let k = k % n
    // Reverse entire array
    nums.reverse()

    // Reverse first k elements
    nums[0..<k].reverse()

    // Reverse remaining n-k elements
    nums[k..<n].reverse()
}

var arr =  [1, 2,3,4,5 ]
rotateArray(nums: &arr, k: 2)
print(arr)
// Time: O(n)
//Space: O(n)
