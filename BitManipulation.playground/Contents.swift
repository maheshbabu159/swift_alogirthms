import UIKit

//let p = PrimitiveType()
//let r = p.countBits(101)
//print(r)

let inputA : UInt8 = 0b00000110
let inputB : UInt8 = 0b00000101
let result = inputA & inputB
print("Result after applying & operator:",result)

let result2 = inputA | inputB
print("Result after applying | operator:",result2)

let result3 = inputA ^ inputB
print("Result after applying ^ operator:",result3)

let shiftBits: UInt8 = 4
print("After shifting bits  to left by 1:",shiftBits << 1)
print("After shifting bits to right by 1:", shiftBits >> 1)
print("After shifting bits  to left by 4:",shiftBits << 4)
print("After shifting bits to right by 4:", shiftBits >> 4)

var overflownum = UInt8.max
overflownum = overflownum &+ 1
print("After using overflow addition operator &+:",overflownum)
