//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/trapping-rain-water-1587115621/1

func trapRainWater(_ arr: [Int]) {
var water = 0



    // Variables
    var left = 0
    var maxLeft = 0

    var right = arr.count - 1
    var maxRight = 0

    while left < right {
        if arr[left] <= arr[right] {
            maxLeft = max(maxLeft, arr[left])
            water += maxLeft - arr[left]
            left += 1
        } else {
            maxRight = max(maxRight, arr[right])
            water += maxRight - arr[right]
            right -= 1
        }
    }
    print(water)
}

print(trapRainWater([2, 1, 5, 3, 1, 0, 4]))
