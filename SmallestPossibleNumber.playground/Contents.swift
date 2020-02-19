import UIKit

var str = "Hello, playground"

func getSmallestPossibleNumber(_ min:Int, _ max:Int) -> Int {
    var flag = false
    var result = 0
    
    var index = 1
    
    while flag == false {
        var newFlag = true
        print("Min and max value = \(min) and \(max)")
        for value in min...max {
            //If index is not divisible by any one of the value it will be set to false
            print("Min and max value = \(value) and \(value)")

            if index%value != 0 {
                print("Set t0 false")
                newFlag = false
            }
        }
        
        if newFlag {
            print("Found value")
            flag = newFlag
            result = index
            return result
        }
        index += 1
    }
    
    return result
}

let result = getSmallestPossibleNumber(1, 20)
print(result)
