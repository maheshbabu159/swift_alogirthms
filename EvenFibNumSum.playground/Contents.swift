import UIKit

func getFibEvenNumSum(limit:Int) -> Int {
    var fiboNumberOne = 1
    var fiboNumberTwo = 0
    
    var sum = 0

    while (fiboNumberOne + fiboNumberTwo) < limit {
        let temp = fiboNumberOne + fiboNumberTwo
        fiboNumberOne = fiboNumberTwo
        fiboNumberTwo = temp
        if fiboNumberTwo % 2 == 0 {
            sum = sum + fiboNumberTwo
        }
        print("Fibonaci \(fiboNumberTwo)")
    }
    return sum
}

let result = getFibEvenNumSum(limit: 4000000)
print("Result = \(result)")
