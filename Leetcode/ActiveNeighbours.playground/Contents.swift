import UIKit



func getActiveUsers(_ array:[Int], _ noOfDays:Int) -> [Int] {
    var result = array
     if noOfDays == 0 {
          return array
     }
     var temp = [Int]()
     for user in 0..<result.count  {
       if user == 0 {
           result[user+1] == 0 ? temp.append(0) : temp.append(1)
           continue
       }
                                
       if user == result.count - 1 {
           result[user-1] == 0 ? temp.append(0) : temp.append(1)
           continue
       }
       result[user-1] == result[user+1] ? temp.append(0) : temp.append(1)
    }
    result = temp
    return getActiveUsers(result, noOfDays - 1)
}


let result = getActiveUsers([1,0,0,1,0,1,0,0,1,1], 1)
print(result)

