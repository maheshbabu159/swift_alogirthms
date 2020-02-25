import Foundation
public class PrimitiveType {
    public init(){
        
    }
    
    //MARK: Using module
    public func countBits(_ num:Int) -> Int {
        //Convert decimal to binary
        if num == 0 { return 0 }
        var n = num
        var c = 0
        while(n > 0){
            if n%2 == 1 {
                c = c + 1
            }
            n = n/2
            print(n)
        }
        return c
    }
    
    //MARK: Using masking
    //TODO: Future
    public func countBitsUsingMasking(_ num:Int) -> Int {
        if num == 0 { return 0 }
        var x = num
        var c = 0
        return c
    }
}
