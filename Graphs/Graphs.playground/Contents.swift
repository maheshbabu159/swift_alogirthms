import UIKit

let graph = Graph()
let aNode = graph.addNode("a")
let bNode = graph.addNode("b")
let cNode = graph.addNode("c")
let dNode = graph.addNode("d")
let eNode = graph.addNode("e")
let fNode = graph.addNode("f")

graph.addEdge(aNode, bNode, 4)
graph.addEdge(aNode, cNode, 2)
graph.addEdge(bNode, cNode, 5)
graph.addEdge(bNode, dNode, 10)
graph.addEdge(cNode, eNode, 3)
graph.addEdge(eNode, dNode, 4)
graph.addEdge(dNode, fNode, 11)

graph.processDijkstra(source: aNode, destination: fNode) 

//graph.breadthFirstSearch(source: aNode)
//graph.reset()
//print("\n", terminator: " ")
//graph.depthFirstSearch(source: aNode)
