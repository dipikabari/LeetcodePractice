/*
 An array is monotonic if it is either monotone increasing or monotone decreasing.
 
 An array nums is monotone increasing if for all i <= j, nums[i] <= nums[j].
 An array nums is monotone decreasing if for all i <= j, nums[i] >= nums[j].
 
 Given an integer array nums, return true if the given array is monotonic, or false otherwise.
 
 Example 1:
 Input: nums = [1,2,2,3]
 Output: true
 
 Example 2:
 Input: nums = [6,5,4,4]
 Output: true
 
 Example 3:
 Input: nums = [1,3,2]
 Output: false
 */

import Foundation

func isMonotonic(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else { return true }
    
    var isIncreasing = true
    var isDecreasing = true
    
    for (index, value) in nums.enumerated() where index > 0 {
        if value > nums[index - 1] {
            isDecreasing = false
        }
        
        if value < nums[index - 1] {
            isIncreasing = false
        }
    }
    return isIncreasing || isDecreasing
}

let nums = [6,5,4,4] //[1,2,2,3] //[1,3,2]

let output = isMonotonic(nums)
print("Given array \(nums) is monotonic : \(output)")