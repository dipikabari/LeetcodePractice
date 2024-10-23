/*
 Implement a function signFunc(x) that returns:
 
 1 if x is positive.
 -1 if x is negative.
 0 if x is equal to 0.
 You are given an integer array nums. Let product be the product of all values in the array nums.
 
 Return signFunc(product).

 Example 1:
 Input: nums = [-1,-2,-3,-4,3,2,1]
 Output: 1
 Explanation: The product of all values in the array is 144, and signFunc(144) = 1

 Example 2:
 Input: nums = [1,5,0,2,-3]
 Output: 0
 Explanation: The product of all values in the array is 0, and signFunc(0) = 0
 
 Example 3:
 Input: nums = [-1,1,-1,1,-1]
 Output: -1
 Explanation: The product of all values in the array is -1, and signFunc(-1) = -1
 */

import Foundation

/// Calculating product and returning sign
func arraySign(_ nums: [Int]) -> Int {
    if nums.contains(0) {
        return 0
    }
    
    var product = 1.0
    
    for i in 0..<nums.count {
        product = product * Double(nums[i])
    }
    
    if product > 0 {
        return 1
    } else {
        return -1
    }
}

/// Returning sign without product calculation, If the count of negative numbers is odd, the product will be negative; if it's even, the product will be positive.
func signProduct(_ nums: [Int]) -> Int {
    if nums.contains(0) {
        return 0
    }
    
    let negatives = nums.filter { $0 < 0 }.count
    
    
    return negatives % 2 != 0 ? -1 : 1
}

let nums = [9,72,34,29,-49,-22,-77,-17,-66,-75,-44,-30,-24] //[-1,1,-1,1,-1] //[-1,-2,-3,-4,3,2,1]

let output = arraySign(nums)
print("Sign returned => \(output)")


let output1 = signProduct(nums)
