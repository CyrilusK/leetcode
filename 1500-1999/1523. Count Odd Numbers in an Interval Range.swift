import Foundation
/*
 Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

  

 Example 1:

 Input: low = 3, high = 7
 Output: 3
 Explanation: The odd numbers between 3 and 7 are [3,5,7].
 Example 2:

 Input: low = 8, high = 10
 Output: 1
 Explanation: The odd numbers between 8 and 10 are [9].
  

 Constraints:

 0 <= low <= high <= 10^9
 */

class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var count = 0
        for i in low...high where i % 2 != 0 {
            count += 1
        }
        return count
    }
}

/*
 Runtime: 2510 ms, faster than 22.64% of Swift online submissions for Count Odd Numbers in an Interval Range.
 Memory Usage: 13.8 MB, less than 12.08% of Swift online submissions for Count Odd Numbers in an Interval Range.
 */
