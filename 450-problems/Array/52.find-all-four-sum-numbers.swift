//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/find-all-four-sum-numbers1732/1

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    let n = nums.count
    if n < 4 { return [] }

    let nums = nums.sorted()
    var result = [[Int]]()

    for i in 0..<(n - 3) {
        if i > 0 && nums[i] == nums[i - 1] { continue } // skip duplicate i

        for j in (i + 1)..<(n - 2) {
            if j > i + 1 && nums[j] == nums[j - 1] { continue } // skip duplicate j

            var left = j + 1
            var right = n - 1

            while left < right {
                let sum = nums[i] + nums[j] + nums[left] + nums[right]

                if sum == target {
                    result.append([nums[i], nums[j], nums[left], nums[right]])

                    // skip duplicates for left & right
                    while left < right && nums[left] == nums[left + 1] {
                        left += 1
                    }
                    while left < right && nums[right] == nums[right - 1] {
                        right -= 1
                    }

                    left += 1
                    right -= 1
                }
                else if sum < target {
                    left += 1
                }
                else {
                    right -= 1
                }
            }
        }
    }

    return result
}
