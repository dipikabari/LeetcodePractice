/*
 A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.
 Given an array of numbers arr, return true if the array can be rearranged to form an arithmetic progression. Otherwise, return
 false.
 
 Example 1:
 Input: arr = [3,5,1]
 Output: true
 Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with differences 2 and -2 respectively, between each consecutive elements.
 
 Example 2:
 Input: arr = [1,2,4]
 Output: false
 Explanation: There is no way to reorder the elements to obtain an arithmetic progression.
 */

import Foundation

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    let sortedArr = arr.sorted()
    
    guard sortedArr.count > 1 else { return false }
    
    let difference = sortedArr[1] - sortedArr[0]
    
    for (index, currentValue) in sortedArr.enumerated() where index > 0 {
        if (index < sortedArr.count - 1) &&
            (sortedArr[index + 1] - currentValue) != difference
        {
            return false
        }
    }
    
    return true
}

let arr = [3,5,1,9,11,7]
let output = canMakeArithmeticProgression(arr)
print("Given array \(arr) is an arithmetic progression : \(output)")
