
class Solution {
    func longestPalindrome(_ s: String) -> [String] {
        let revesedString = self.reverse(s)
        var palindromString = [String]()
        var temp = [String]()
        print(revesedString)
        
        let reversedChars = Array(revesedString)
        let inputChars = Array(s)
        
        for i in 0..<reversedChars.count - 1{
            if reversedChars[i] == inputChars[i]{
                temp.append("\(reversedChars[i])")
            }else{
                if palindromString.count < temp.count {
                    palindromString = temp
                    temp.removeAll()
                }else{
                    temp.append("\(reversedChars[i])")
                }
            }
        }

        
        return palindromString
    }
    
    func reverse(_ s:String) -> String {
        var result = ""
        for i in 1...s.count {
            let index = s.index(s.endIndex, offsetBy: -i)
            result.append(s[index])
        }
        return result
    }
}

let solution = Solution()
    let result = solution.longestPalindrome("abada")
    print("Loongest unique string count \(result)")

