import Foundation
public class Random{
    public init(){
        
    }
    public func checAttendence() -> Bool {
        let s = "PPAPLLPLL"
        let chars = Array(s)
        let l = chars.count
        
        if(l == 0) { return false }
        
        var abs = 0
        var lates = 0
        var i = 0
        var result = false
        while i < l {
            let c = chars[i].uppercased()
            if(i < l - 1){
                print("c = \(c) next = \(chars[i + 1].uppercased())")
                if c == "L" && chars[i + 1].uppercased() == "L" {
                    lates += 1
                }
            }
            if c == "A" {
                abs += 1
            }
            
            result = check(abs, lates)
            if !result {
                result = false
                break
            }
            i += 1
        }
        return result
    }
    
    func check(_ abs:Int, _ lates:Int) -> Bool {
        if abs > 1 || lates > 2 {
            return false
        }else{
            return true
        }
    }
}
