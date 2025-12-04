

//
//  Created by Ankita Srivastava on 03/12/25.
//

import Foundation
//https://www.geeksforgeeks.org/problems/move-all-negative-elements-to-end1813/1

func moveAllNegatives(arr: inout [Int]) {
var positive = [Int]()
var negative = [Int]()
    for i in arr {
        if i > 0 {
            positive.append(i)
        }else {
            negative.append(i)
        }
    }
    print(positive+negative)
}

var arr =  [1, -1, 3, 2, -7, -5, 11, 6 ]
moveAllNegatives(arr: &arr)
print(arr)
// Time: O(n)
//Space: O(n)
