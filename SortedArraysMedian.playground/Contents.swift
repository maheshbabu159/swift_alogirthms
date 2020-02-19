class Solution {
    func median(_ array1:[Int], _ array2:[Int]) -> Float {
        var result:[Int] = [Int]()
        var i = 0
        var j = 0
        var median:Float = 0.0
        while i < array1.count && j < array2.count {
            if array1[i] < array2[j] {
                result.append(array1[i])
                i += 1
            } else {
                result.append(array2[j])
                j += 1
            }
        }

        while i < array1.count {
            result.append(array1[i])
            i += 1
        }

        while j < array2.count {
            result.append(array2[j])
            j += 1
        }
        
        print(result)
        if result.count%2 == 0{
            let medianRefIndex = result.count/2 - 1
            print(medianRefIndex)
            median = Float((result[medianRefIndex] + result[medianRefIndex + 1]))/2
        }else {
            let medianRefIndex = result.count%2
            median = Float(result[medianRefIndex])
        }
        
        return median
    }
}

let array1 = [1,2]
let array2 = [3 , 4]
let solution = Solution()
let result = solution.median(array1, array2)
print(result)
