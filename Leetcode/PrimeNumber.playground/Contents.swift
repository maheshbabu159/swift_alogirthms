import UIKit

func getLargestPrimeFactor(_ input: Int) -> Int {
    var result = 0
    
    if input <= 0 { return 0 }
    if input <= 2 { return input }
    
    var index = input
    while index > 0 {
        if isPrimeNumber(index){
            result = index
            return result
        }
        index -= 1
    }
   
    return result
}


func isPrimeNumber(_ input: Int) -> Bool {
    var flag = false
    
    if input <= 0 { return false }
    if input <= 2 { return true }
    
    for index in 2..<input  {
        //print(input)
        //print(index)
        if(input % index == 0) { return false }
        flag = true
    }
    return flag
}

let result = getLargestPrimeFactor(600851475143)
print(result)

