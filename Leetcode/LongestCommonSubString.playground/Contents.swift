
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxHashString: [Character: Int] = [:]
        var tempHashString: [Character: Int] = [:]
        var repeated:Bool = false
        if s.isEmpty{
            return 0
        }

        for (count, char) in s.enumerated() {
                print("Index and Char \(count) = \(char)")
            if tempHashString[char] != nil {
                repeated = true
                print("Existed \(tempHashString[char]!) \(char)")
                if tempHashString.count >= maxHashString.count{
                    maxHashString = tempHashString
                    tempHashString.removeAll()
                    tempHashString[char] = count
                }else{
                    tempHashString.removeAll()
                    tempHashString[char] = count
                }
            }else{
                tempHashString[char] = count
                if !repeated || (count == (s.count - 1))  {
                    maxHashString = tempHashString
                }
            }
        }
        print(maxHashString)
        return maxHashString.count
    }
}

let solution = Solution()
let result = solution.lengthOfLongestSubstring("aab")
print("Loongest unique string count \(result)")
