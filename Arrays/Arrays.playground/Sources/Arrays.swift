import Foundation
public class Arrays{
    let swapEvenArray = [54,21,45,23,67,98,3,4,6,1,2]
    var swapedEvenArray = [Int]()
    public init(){
        
    }
    //MARK: SC = O(n), TC = O(n) 
    public func swapEvenToFront(){
        let a = swapEvenArray
        for i in 0..<a.count {
            let v = a[i]
            //print(v)
            if v%2 == 0{
                swapedEvenArray.insert(v, at:0)
            }else{
                swapedEvenArray.append(v)
            }
        }
        swapedEvenArray.forEach() { print($0) }
    }
    //MARK: SC = O(1), TC = O(n)
    public func swapEvenToFront1(){
        var a = swapEvenArray
        var i = 0 // Next even index
        var j = a.count - 1 // Next odd index
        while i < j {
            print("i = \(i) and j = \(j)")
            if a[i] % 2 == 0 {
                i += 1
            }else{
                let temp = a[i]
                a[i] = a[j]
                a[j] = temp
                j = j - 1
            }
            
        }
        a.forEach() { print($0) }
    }
    
    //MARK: SC = O(1), TC = O(n)
    public func rotateArray(_ r:Int){
        var a = swapEvenArray
        var x = r
        while x > 0 {
            
            let first = a[0]
            for i in 0..<(a.count - 1){
                a[i] = a[i + 1]
            }
            a[a.count - 1] = first
           
            x -= 1
        }
        a.forEach() { print($0) }
    }
    
    //MARK: SC = O(1), TC = O(n)
    public func dutchNationaFlag(){
        var nums = [2,1,0,1,0,2]
        
        var low = 0
        var high = nums.count - 1
        var curr = low
        
        while (curr <= high) {
            let num = nums[curr]
            if (num == 0) {
                nums[curr] = nums[low]
                nums[low] = 0
                low  += 1
                curr = low
            } else if (num == 2) {
                nums[curr] = nums[high]
                nums[high] = 2
                high -= 1
            } else {
                curr += 1
            }
        }
        
        nums.forEach() { print($0) }
    }
    
    public func arbitaryPrecisionIncrease(){
        var nums = [1,9,0,9,0,9,9]
        var i = nums.count - 1
        var carryout = 0
        while(i>=0 ){
            if nums[i] == 9 {
                nums[i] = 0
                carryout = 1
            } else {
                nums[i] = nums[i] + 1
                carryout = 0
                break
            }
            i -= 1
        }
        if carryout == 1 {
            nums.insert(carryout, at:0)
        }
        nums.forEach() { print($0) }
    }
    
    public func addTwoStrings(){
        let s1 = "999"
        let s2 = "999"
        
        var i = s1.count - 1
        var j = s2.count - 1
        
        var result = 0
        var resultString = ""
        var carry_out = 0
        while i >= 0 && j >= 0 {
            let index1 = s1.index(s1.startIndex, offsetBy:i)
            let n1 = Int(String(s1[index1]))!
            let index2 = s2.index(s2.startIndex, offsetBy:i)
            let n2 = Int(String(s2[index2]))!
            
            
            if carry_out > 0 {
                result = (n1 + n2)%10 + carry_out
                carry_out = Int((n1 + n2)/10)
            }else{
                result = (n1 + n2)%10
                carry_out = Int((n1 + n2)/10)
            }
            
            resultString = "\(result)\(resultString)"
            i -= 1
            j -= 1
        }
         
        if carry_out > 0 {
            let cs = "\(carry_out)"
            result = Int(cs + resultString)!
        }
        print(result)

        //nums.forEach() { print($0) }
    }
    
    public func multiplyTwoStrings(){
        let a = [2,3,5,4,6,3,6]
        let b = [4,5,6,7,4,3,7]
        print(a)
        print(b)
        
        

        //nums.forEach() { print($0) }
      }
    
    /*
     Advancing through an array in a board game
     */
    public func advanceThroughArray() -> Bool {
        let nums = [3,2,1,1,2,0,1]
        if nums.count == 0{
           return false
        }
        var currentIndex = 0
        var lastPosition = nums[currentIndex]

        while currentIndex < nums.count && currentIndex <= lastPosition{
            lastPosition = max(lastPosition, currentIndex + nums[currentIndex])
            currentIndex += 1
        }
        if currentIndex == nums.count{
           return true
        }

        return false
    
    }
    
    /*
     Advancing through an array in a board game
     */
    public func removeDuplicates() {
        var nums = [1,2,3,5,5,6,7,7,8,9]
        
        nums.forEach() { print($0) }

    }
    public func maxProfit() -> Int {
        let prices = [1,2,3,5,5,6,7,7,8,9]

        if prices.count < 2 {
            return 0
        }
        var min = prices[0]
        var result = prices[1] - min
        for i in 1..<prices.count {
            if min > prices[i] {
                min = prices[i]
            }
            if min < prices[i] {
                let diff = prices[i] - min
                if result < diff {
                    result = diff
                }
            }
        }
        return result < 0 ? 0 : result
    }
    public func maxRepeatedElement(){
        let nums = [3,2,1,1,2,0,1, 0, 0, 0, 0]
        var count = 0, curr_cnt = 1, freq_num = 0, key = 0
        for i in 0..<nums.count {
            key = nums[i]
            
            var j = nums.count
            while j < nums.count{
                if(key == nums[j] && freq_num != key){
                    curr_cnt += 1
                }
                j -= 1
            }
            if(count < curr_cnt){
                count = curr_cnt
                curr_cnt = 1
                freq_num = key
            }
        }
        print("Num = \(count) and times = \(freq_num)");
    }
}

