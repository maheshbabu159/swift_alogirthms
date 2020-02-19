import UIKit

var str = "Hello, playground"

func getLargestPalindrome(n:Int) -> Int {
    var max_product = 0
    var upperLimit = 0
    var lowerLimit = 1

    for _ in 1..<(2*n) {
        upperLimit *= 10
        upperLimit += 9
        lowerLimit *= 10

    }
    upperLimit = upperLimit*10 + 9
    print(upperLimit)
    print(lowerLimit)

    var i = upperLimit - 1
    print(i)

    while i > lowerLimit {
        if i == reverseNumber(value: i){
            max_product = i
            print("Max product = \(max_product)")
            return max_product
        }
        i -= 1
        print(i)
    }
    return max_product
}

func reverseNumber(value:Int) -> Int {
    var result = 0
    var number = value
    while number > 0 {
        result = result*10 + number%10
        number = number/10
    }

    return result
}

let result = getLargestPalindrome(n: 3)
print(result)
