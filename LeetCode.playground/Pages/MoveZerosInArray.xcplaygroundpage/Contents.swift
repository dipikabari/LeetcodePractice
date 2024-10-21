/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Note that you must do this in-place without making a copy of the array.
 
 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Example 2:
 Input: nums = [0]
 Output: [0]
 */

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var numberIndex = 0
    
    // Move all non-zero to front of array
    for (index,n) in nums.enumerated() {
        if nums[index] != 0 {
            nums[numberIndex] = n
            numberIndex += 1
        }
    }
    
    // Fill rest of the array with zeros
    for i in numberIndex..<nums.count {
        nums[i] = 0
    }
}
var nums = [0,1,0,3,12]

moveZeroes(&nums)
