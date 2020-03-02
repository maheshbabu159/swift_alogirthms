import Foundation
public class DP {
    public init(){
        
    }
    
    // MARK: Java program to count number of paths in a maze with obstacles.
    public func subsetSum(){
        findSubsetSum()
    }
    
    private func findSubsetSum(){
        let a = [3, 34, 12, 4, 5, 2]
        let t = 9
    

        
        let m = t + 1
        let n = a.count + 1
        
        var mt : [[Bool]] = Array(repeating: Array(repeating: false, count:  m), count: n)

        for i in 0...n {
            mt[0][i] = true
        }
        
        for i in 1...m {
            mt[i][0] = false
        }
        
        for i in 1...m {
            for j in 1...n {
                mt[i][j] = mt[i][j-1]
                if i >= a[j-1]{
                    mt[i][j] = mt[i][j] ||
                    mt[i - a[j-1]][j-1]
                }
                
            }
        }
        
        print(mt[t][a.count])
    }
    
    // MARK: Java program to count number of paths in a maze with obstacles.
    public func countMatrixPaths() -> Int {
        var maze = [[0, 0, 0, 0],[0, -1, 0, 0],[-1, 0, 0, 0],[0, 0, 0, 0]]
        let r = maze.count
        let c = maze[0].count
        
        if maze[0][0] == -1 {
            return 0
        }
        
        // Initializing the leftmost column
        for i in 1..<r {
            if (maze[i][0] == 0) {
                  maze[i][0] = 1
            }else {
                // If we encounter a blocked cell
                // in leftmost row, there is no way
                // of visiting any cell directly below it.
                break
            }
          }
        
        // Similarly initialize the topmost row
        for i in 1..<c {
            if (maze[0][i] == 0){
                maze[0][i] = 1
            }else {
                // If we encounter a blocked cell in
                // bottommost row, there is no way of
                // visiting any cell directly below it.
                break
            }
        }
        
        
        // The only difference is that if a cell
          // is -1, simply ignore it else recursively
          // compute count value maze[i][j]
        for i in 1..<r {
            for j in 1..<c {
                  // If blockage is found,
                  // ignore this cell
                if (maze[i][j] == -1) {
                      continue
                }
        
                  // If we can reach maze[i][j] from
                  // maze[i-1][j] then increment count.
                if (maze[i - 1][j] > 0){
                      maze[i][j] = (maze[i][j] +
                                   maze[i - 1][j])
                }
        
                  // If we can reach maze[i][j] from
                  //  maze[i][j-1] then increment count.
                if (maze[i][j - 1] > 0){
                      maze[i][j] = (maze[i][j] +
                                    maze[i][j - 1])
                }
              }
          }
        
          // If the final cell is blocked,
          // output 0, otherwise the answer
          return (maze[r - 1][c - 1] > 0) ?
                  maze[r - 1][c - 1] : 0;
    }
    
    public func fib(_ n:Int) -> Int {
        if n <= 1 {
            return n
        }
        
        var fibArray = [0,1]
        for i in 2...n {
            fibArray.append(fibArray[i - 1] + fibArray[i - 2])
        }
        return fibArray[n]
    }
    
    public func factorialRecursive(_ n:Int) -> Int {
        if n <= 0 {
            return 1
        }
        return n * factorialRecursive(n-1)
    }
    public func factorialDP(_ n:Int) -> Int {
        if n <= 1 {
            return n
        }
        
        var facArray = [1,1]
        for i in 2...n {
            facArray.append(i * facArray[i - 1])
        }
        return facArray[n]
    }
    
    // MARK: Rod
    
}
