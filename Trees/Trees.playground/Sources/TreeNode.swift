import Foundation
public class TreeNode {
    var data:Int
    var leftNode:TreeNode?
    var rightNode:TreeNode?
    var height:Int?
    public init(_ data:Int, _ leftNode:TreeNode? = nil, _ rightNode:TreeNode? = nil){
        self.data = data
        self.rightNode = rightNode
        self.leftNode = leftNode
    }
}
