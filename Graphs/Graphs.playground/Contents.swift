import UIKit


//let topCompetitors = TopCompetitors()
//let reviews = ["Hello how are you amazon", "amazon is awesome", "facebook is good"]
//let competitors = ["facebook", "amazon"]
//let result = topCompetitors.getTopCompetitors(reviews: reviews, competitors: competitors, noOfTopCompetitors: 1)
//print(result.joined(separator: ","))

 
//let distributeFile = DistributeFile()
//let servers = [[1, 0, 0, 0, 0,0], [1, 0, 0, 0, 0,0], [1, 0, 0, 0, 0,0], [1, 0, 0, 0,0,0], [1, 0, 0, 0,0,0]]
//let result = distributeFile.getHoursRequiredToDistribute(servers: servers)
//print("Hours = \(result)")


// MARK: Binary tree
let node5 = BinaryTree.node(.empty, "5", .empty)
let nodeA = BinaryTree.node(.empty, "a", .empty)
let node10 = BinaryTree.node(.empty, "10", .empty)
let node4 = BinaryTree.node(.empty, "4", .empty)
let node3 = BinaryTree.node(.empty, "3", .empty)
let nodeB = BinaryTree.node(.empty, "b", .empty)


// intermediate nodes on the left
let minus10 = BinaryTree.node(nodeA, "-", node10)
let timesLeft = BinaryTree.node(node5, "*", minus10)

// intermediate nodes on the right
let minus4 = BinaryTree.node(.empty, "-", node4)
let divide3andB = BinaryTree.node(node3, "/", nodeB)
let timesRight = BinaryTree.node(minus4, "*", divide3andB)

// root node
let tree = BinaryTree.node(timesLeft, "+", timesRight)
print(tree.description)
print(tree.count)
