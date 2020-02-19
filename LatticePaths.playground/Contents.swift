import UIKit


class Solution {

    var result = 0
    public func compute(m:Int, n:Int) -> Int {
        for i in 0..<m {
            for j in 0..<n {
                countLatticePaths(i: i, j: j, m: m, n: n)
            }
        }
        return result
    }
    public func countLatticePaths(i:Int, j:Int, m:Int, n:Int) {
        if (i == m && j == n) {
            self.result += 1
            return
        }
        countLatticePaths(i: i, j: j, m: m, n: n)
    }
}

//let solution = Solution()
//print(solution.compute(m: 3, n: 2))



//Dynamic programming
public func latticePathsDP(m:Int, n:Int) -> [[Int]] {
    var matrix = [[Int]]()
    for i in 0..<m {
        matrix[i][0] = 1
    }
    for i in 0..<n {
        matrix[0][i] = 1
    }
    
    for i in 1...m  {
        for j in 1...n  {
            matrix[i][j] += matrix[i-1][j] + matrix[i][j-1]
        }
    }
    return matrix
}

let result = latticePathsDP(m: 3, n: 3)
print(result)
/*class LatticePaths {
    public static count:Int
    public static int compute(int m, int n) {
      // YOUR WORK HERE
        count = 0;
     countLatticePaths(0, 0, m, n);
     return count;
    }
    
    private static void countLatticePaths(int i, int j, int m, int n) {
        if(i == m &amp;&amp; j == n) {
            count++;
            return;
        }
        
        if(i > m || j > n)
            return;
            countLatticePaths(i+1, j, m, n);
            countLatticePaths(i, j+1, m ,n);
    }
}*/
