/*
 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
 
 Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
 
 Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 */

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var numsCount = 0
    var temp:[Int] = []
    
    for n in nums {
        print("current number : \(n)")
        if n != val {
            temp.append(n)
            numsCount += 1
        print("numsCount : \(numsCount)")
        }
    }
    print(temp)
    nums = temp
    return numsCount
}

var nums = [3,2,2,3]
let val = 3
let count = removeElement(&nums,val)
print("new array values count : \(count)")
