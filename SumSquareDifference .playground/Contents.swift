import UIKit

var str = "Hello, playground"


func getSumSquareDifferance(_ n:Int) -> Int{
    var result = 0
    
    var squaresSum = 0
    var sumSquare = 0
    for i in 1...n {
        squaresSum = squaresSum  + i * i
        sumSquare = sumSquare + i
    }
    print(squaresSum)
    print(sumSquare)
    result = (sumSquare * sumSquare) - squaresSum
    return result
    
}

let result = getSumSquareDifferance(100)
print(result)
