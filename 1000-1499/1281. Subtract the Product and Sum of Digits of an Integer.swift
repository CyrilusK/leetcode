import Foundation

/*
 Given an integer number n, return the difference between the product of its digits and the sum of its digits.
  

 Example 1:

 Input: n = 234
 Output: 15
 Explanation:
 Product of digits = 2 * 3 * 4 = 24
 Sum of digits = 2 + 3 + 4 = 9
 Result = 24 - 9 = 15
 Example 2:

 Input: n = 4421
 Output: 21
 Explanation:
 Product of digits = 4 * 4 * 2 * 1 = 32
 Sum of digits = 4 + 4 + 2 + 1 = 11
 Result = 32 - 11 = 21
  

 Constraints:

 1 <= n <= 10^5
 */

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let product = String(n).compactMap {Int(String($0))!}.reduce(1, *)
        let sum = String(n).compactMap {Int(String($0))!}.reduce(0, +)
        return product - sum
    }
}

/*
 Runtime: 5 ms, faster than 23.75% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
 Memory Usage: 13.9 MB, less than 19.38% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
 */
