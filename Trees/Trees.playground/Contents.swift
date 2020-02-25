import UIKit

let binaryTree = BinaryTree()
binaryTree.insert(100)
binaryTree.insert(30)
binaryTree.insert(20)
binaryTree.insert(120)
binaryTree.insert(150)
binaryTree.insert(110)
binaryTree.insert(160)
binaryTree.insert(50)
binaryTree.insert(10)
binaryTree.insert(25)
binaryTree.insert(40)

//let searchResult = binaryTree.search(55)
//print("Search Result = \(searchResult)")
//binaryTree.traverse()



//let tree = BinaryTree<String>()
//tree.insert( "F")
//tree.insert("G")
//tree.insert( "H")
//tree.insert("D")
//tree.insert("E")
//tree.insert("I")
//tree.insert("J")
//tree.insert("A")
//tree.insert("B")
//tree.insert("C")
//tree.traverse()

let isBlanaced = binaryTree.isBalanced()
print("Is Binary Tree Balanced = \(isBlanaced)")
