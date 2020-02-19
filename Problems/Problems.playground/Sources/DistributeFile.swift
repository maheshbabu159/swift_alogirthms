import Foundation

public class DistributeFile{
    public init(){
        
    }
    public func getHoursRequiredToDistribute(servers:[[Int]]) -> Int {
        var result = 0
        var matrix = servers
        let rows = servers.count
        let cols = servers[0].count
        var filled = false
        
        var temp = matrix
        while(!filled){
            if(!filled){
                result += 1
            }
            for i in 0..<rows{
                for j in 0..<cols{
                    if(matrix[i][j] == 1){
                        if(i>0 && matrix[i-1][j] == 0){
                            temp[i-1][j] = 1
                        }
                        if(i<(rows - 1) && matrix[i+1][j] == 0){
                            temp[i+1][j] = 1
                        }
                        if(j>0 && matrix[i][j-1] == 0){
                            temp[i][j-1] = 1
                        }
                        if(j<(cols - 1) && matrix[i][j + 1] == 0){
                            temp[i][j + 1] = 1
                        }
                        
                    }
                }
            }
            matrix = temp
            
            var sum = 0
             for i in 0..<rows{
                for j in 0..<cols{
                    print(matrix[i][j])
                    if(matrix[i][j] == 1){
                        sum += 1
                    }
                    if(sum == (rows * cols)){
                        filled = true
                    }else{
                        filled = false
                    }
                }
            }
        }
        return result
    }
}

