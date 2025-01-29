/***
 Given a square matrix mat, return the sum of the matrix diagonals.
 
 Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.
 
 Example 1:
 Input: mat = [[1,2,3],
           [4,5,6],
           [7,8,9]]
 Output: 25
 Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
 Notice that element mat[1][1] = 5 is counted only once.
 
 Example 2:
 Input: mat = [[1,1,1,1],
           [1,1,1,1],
           [1,1,1,1],
           [1,1,1,1]]
 Output: 8

 Example 3:
 Input: mat = [[5]]
 Output: 5
 ***/

func diagonalSum(_ mat: [[Int]]) -> Int {
    var sum = 0
    var leftToRightDiagonalSum = 0
    var rightToLeftDiagonalSum = 0
    let matrixCount = mat.count
    print(mat.count)
    
    let commonIndex = (matrixCount - 1) / 2
    
    for i in 0..<matrixCount {
        leftToRightDiagonalSum += mat[i][i]
        rightToLeftDiagonalSum += mat[i][matrixCount - i - 1]
        sum = leftToRightDiagonalSum + rightToLeftDiagonalSum
        
        if matrixCount % 2 != 0 {
            sum = sum - mat[commonIndex][commonIndex]
        }
    }
    return sum
}
 
let matrix = [[1,2,3],
              [4,5,6],
              [7,8,9]]
print("Input : \(matrix)")

let output = diagonalSum(matrix)
print("Sum of diagonals is \(output)")


let input = [[1,1,1,1],
                   [1,1,1,1],
                   [1,1,1,1],
                   [1,1,1,1]]
let output1 = diagonalSum(input)
print("Sum of diagonals is \(output1)")

