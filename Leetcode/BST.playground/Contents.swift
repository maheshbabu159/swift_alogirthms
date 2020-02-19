import UIKit

public class TreeNode {
    public var val:Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ value: Int){
        self.val = value
        self.left = nil
        self.right = nil
        
    }
}
class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var result = root
        let newNode = TreeNode(val)
        if result == nil {
            result = newNode
            return result
        }
        if val < result!.val {
            if result?.left == nil {
                result?.left = newNode
            }else {
                insertIntoBST(result?.left, val)
            }
        }else {
            if result?.right == nil {
                result?.right = newNode
            }else {
                insertIntoBST(result?.right, val)
            }
        }
    
        return result
    }
}

let solution = Solution()
let first = solution.insertIntoBST(nil, 5)
let second = solution.insertIntoBST(first, 10)
let thirt = solution.insertIntoBST(second, 6)


