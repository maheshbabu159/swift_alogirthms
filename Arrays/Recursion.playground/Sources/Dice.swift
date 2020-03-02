import Foundation
public class Dice{
    public init(){
        
    }
    
    // MARK: Count number of ways to reach a given score in a game
    public func scoringWays(){
        let scores = [1,2,3]
        let target = 4
        let count = scores.count
        print(getPossibbleWaysCount(scores, count, target))
        print(getPossibbleWaysCountDP(scores, count, target))

    }
    
    private func getPossibbleWaysCount(_ S:[Int], _ m:Int, _ n:Int) -> Int {
        
        if n == 0 {
            return 1
        }
        if n < 0 {
            return 0
        }
        
        if m <= 0 && n >= 0 {
            return 0
        }
    
        return getPossibbleWaysCount(S, m - 1, n) + getPossibbleWaysCount(S, m, n - S[m - 1] )
    }
    
    private func getPossibbleWaysCountDP(_ S:[Int], _ m:Int, _ n:Int) -> Int {
        var table = [Int]()
    
        // Base case (If given value is 0)
        table.append(1)
        
        
    }
    

    // MARK: N doors with 1 key
    public func mazeProb() {
        let maze = [[0,0,1],[1,0,1],[1,1,0]]
        var keyAvailable = true
        print(findPath(maze, 0, 0, &keyAvailable))
    }
    
    private func findPath(_ maze:[[Int]], _ m:Int, _ n:Int, _ key:inout Bool) -> Bool {
        if m < 0 || m > maze.count || n < 0 || n > maze.count {
            return false
        }
        
        // If the key hasn't been used before
        if maze[m][n] == 1 {
            if key == true {
                // If current cell is the destination
                if m == maze.count - 1 && n == maze.count - 1 {
                    return true
                }
                
                // Either go down or right
                return findPath(maze, m + 1, n, &key)
            }
            return false
        }
        return findPath(maze, m + 1, n, &key)

    }
    public func getPossibilities(){
        let n = 10
        let k = 6
        let sum = 15
        print(count(n, k, sum))
    }
    
    private func count(_ n:Int, _ k:Int, _ sum:Int) -> Int {
        print("\(n) \(k) \(sum)")
        if (n == 0) {
            return (sum == 0) ? 1: 0;
        }
        
        // desired sum can't be reached with current configuration
        if (sum < 0 || k * n < sum || n > sum) {
            return 0;
        }

        var res = 0
        for i in 1...k {
            res += count(n - 1, k, sum - i)
        }
        return res
    }
}

