import Foundation
public class PatternMatching {
    public init(){
        
    }

    // MARK: Pattern matching brute force
    public func checkPatternMatching(){
        let s = Array("There would have been a time for such wodl")
        let p = Array("word")
        
        var i = 0
        var j = 0
        var c = 0

        while i < s.count && j < p.count {
            let sc = s[i]
            let pc = p[j]
            
            print("\(pc) \(sc)")

            if sc == pc {
                j += 1
                i += 1
                c += 1
                print("\(c)")

                if c == p.count {
                    print("Match found")
                    break
                }
            }else{
                i += 1
                j = 0
                c = 0
            }
            
        }
    }
}
