// https://leetcode.com/problems/reverse-pairs/description/

class Solution {
    var count = 0
    func reversePairs(_ nums: [Int]) -> Int {
        var nums = nums
        mergeSort(&nums,0,nums.count-1)
        return count
    }

    func mergeSort(_ nums: inout [Int], _ left: Int, _ right: Int) {
        if (left < right) {
          let mid = (left+right)/2
          mergeSort(&nums, left, mid)
          mergeSort(&nums, mid+1, right)
          countPairs(&nums, left, right, mid)
          merge(&nums, left, right, mid)
        }
    }

      func merge(_ nums: inout [Int], _ left: Int, _ right: Int, _ mid: Int) {  
        var res = [Int]()
        var l = left
        var r = mid + 1

        while l <= mid && r <= right {
            if nums[l] <= nums[r] {
            res.append(nums[l])
            l += 1
            } else {
             res.append(nums[r])
            r += 1  
            }
        }

           while(l <= mid) {
            res.append(nums[l])
            l += 1
         }

         while(r <= right) {
            res.append(nums[r])
            r += 1
         }

        for i in left...right {
            nums[i] = res[i-left]
        }
      }

        func countPairs(_ nums: inout [Int], _ left: Int, _ right: Int, _ mid: Int) { 
            var r = mid + 1

            for i in left...mid {
                 while( r<=right && nums[i] > 2*nums[r] ) {
                r += 1
            }
            count += r - (mid+1)
            }

            
        }
    }
