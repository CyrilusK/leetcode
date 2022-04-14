
import Foundation

/*
 Given an integer array nums, return the largest perimeter of a triangle with a non-zero area, formed from three of these lengths. If it is impossible to form any triangle of a non-zero area, return 0.

  

 Example 1:

 Input: nums = [2,1,2]
 Output: 5
 Example 2:

 Input: nums = [1,2,1]
 Output: 0
  

 Constraints:

 3 <= nums.length <= 10^4
 1 <= nums[i] <= 10^6
 */

class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let num = nums.sorted(by: >)
        for i in 0..<num.count {
            if num[i] + num[(i+1) % num.count] > num[(i+2) % num.count] && num[(i+1) % num.count] + num[(i+2) % num.count] > num[i] && num[i] + num[(i+2) % num.count] > num[(i+1) % num.count] {
                return num[i] + num[(i+1) % num.count] + num[(i+2) % num.count]
            }
        }
        return 0;
    }
}

/*
 Runtime: 164 ms, faster than 99.16% of Swift online submissions for Largest Perimeter Triangle.
 Memory Usage: 14.6 MB, less than 15.13% of Swift online submissions for Largest Perimeter Triangle.
 */
