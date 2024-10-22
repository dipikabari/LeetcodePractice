/*
 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
 
 Increment the large integer by one and return the resulting array of digits.
 
 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].
 */

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    // Make immutable function parameter (let) 'digits' into mutable (var)
    var digits = digits
    
    // Traverse the digits from last to first
    for (index,_) in digits.enumerated().reversed() {
        
        if digits[index] < 9 {
            digits[index] += 1
            return digits
        }
            digits[index] = 0
        
    }
    
    digits.insert(1, at: 0)
    return digits
}

let digits = [1,9,9]

let output = plusOne(digits)
print("Given digits: \(digits) -> \nIncrement by one : \(output)")
