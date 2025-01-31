/***
 You are given an array of unique integers salary where salary[i] is the salary of the ith employee.
 
 Return the average salary of employees excluding the minimum and maximum salary. Answers within 10-5 of the actual answer will be accepted.
 
 Example 1:
 Input: salary = [4000,3000,1000,2000]
 Output: 2500.00000
 Explanation: Minimum salary and maximum salary are 1000 and 4000 respectively.
 Average salary excluding minimum and maximum salary is (2000+3000) / 2 = 2500
 
 Example 2:
 Input: salary = [1000,2000,3000]
 Output: 2000.00000
 Explanation: Minimum salary and maximum salary are 1000 and 3000 respectively.
 Average salary excluding minimum and maximum salary is (2000) / 1 = 2000
 ***/

import Foundation

func average(_ salary: [Int]) -> Double {
    guard let minimumSalary = salary.min(), let maximumSalary = salary.max() else {
        return 0.0
    }
    
    var salaryToAverage = 0.0
    var counter = 0.0
    
    for amount in salary {
        if amount != minimumSalary && amount != maximumSalary {
            salaryToAverage += Double(amount)
            counter += 1
        }
    }

    return salaryToAverage / counter
}

let salary = [8000,9000,2000,3000,6000,1000] //[4000,3000,1000,2000] //[1000,2000,3000]
let output = average(salary)
print("Average salary is \(output)") //4750.0
