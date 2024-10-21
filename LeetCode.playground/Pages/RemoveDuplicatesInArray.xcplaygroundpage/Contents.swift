import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var countDictionary : [Int:Int] = [:]
    
    for number in nums {
        countDictionary[number, default: 0] += 1
    }
    
    nums = Array(countDictionary.keys).sorted()
    
    return countDictionary.count
}


var nums = [1, 1, 2, 3, 4, 4, 5]
let uniqueCount = removeDuplicates(&nums)
print("Count of unique elements: \(uniqueCount)")  // Output: 5
print("Unique elements: \(nums.prefix(uniqueCount))")  // Output: [1, 2, 3, 4, 5]
