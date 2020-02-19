import Foundation

public indirect enum BinaryTree<T>{
    case empty
    case node(BinaryTree, T, BinaryTree)
    
    public var count: Int {
      switch self {
      case let .node(left, _, right):
        return left.count + 1 + right.count
      case .empty:
        return 0
      }
    }
}
public class BinarySearchTreeNode<T> {
    var value:T
    var leftChild:BinarySearchTreeNode?
    var rightChild:BinarySearchTreeNode?
    
    public init(_ value:T) {
        self.value = value
    }
    
}
extension BinaryTree: CustomStringConvertible {
    public var description: String {
    switch self {
    case let .node(left, value, right):
      return "value: \(value), left = [" + left.description + "], right = [" + right.description + "]"
    case .empty:
      return ""
    }
  }
}
