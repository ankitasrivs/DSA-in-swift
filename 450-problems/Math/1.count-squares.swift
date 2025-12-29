//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/count-squares3649/1


func countPerfectSquaresBinary(_ n: Int) -> Int {
    if n <= 1 { return 0 }
    
    var low = 1
    var high = n
    var ans = 0
    
    while low <= high {
        let mid = (low + high) / 2
        let sq = mid * mid
        
        if sq < n {
            ans = mid
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return ans
}
