//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/factorials-of-large-numbers2508/1

func factorial(num: Int)   {
var result = [1]

    if num == 0 || num == 1 {
         print(result)
          return
    }

    for i in 2...num {
        var carry = 0

        for k in 0..<result.count {
            let prod = (result[k] * i) + carry
            result[k] = prod % 10
            carry = prod / 10
        }
        while carry > 0 {
            result.append(carry%10)
            carry /= 10
        }
    }

    print(Array(result.reversed()))

}



var a = [1, 2, -1]
var b = [2, 3]
var arr =   [2, 3, 1, 2, 3]

print(factorial(num: 5))
//print(merge(a: &a,b: &b))
//print(arr)
// Time: O(n)
//Space: O(q)

