//
//  main.swift
//  DSA-450
//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else { return 0 }

    var minPrice = prices[0]
    var maxProfit = 0

    for price in prices {
        if price < minPrice {
            minPrice = price
        } else if price - minPrice > maxProfit {
            maxProfit = price - minPrice
        }
    }

    return maxProfit
}

// Example
let prices = [7,1,5,3,6,4]
print(maxProfit(prices)) // Output: 5 (buy at 1, sell at 6)
