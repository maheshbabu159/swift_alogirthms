import UIKit
let graph = Graph()
let aNode = GraphNode("a")
let bNode = GraphNode("b")
let cNode = GraphNode("c")
let dNode = GraphNode("d")
let eNode = GraphNode("e")
let fNode = GraphNode("f")
let gNode = GraphNode("g")
let hNode = GraphNode("h")

graph.addNode(aNode)
graph.addNode(bNode)
graph.addNode(cNode)
graph.addNode(dNode)
graph.addNode(eNode)
graph.addNode(fNode)
graph.addNode(gNode)
graph.addNode(hNode)

graph.addEdge(from: aNode, to: bNode)
graph.addEdge(from: aNode, to: cNode)
graph.addEdge(from: bNode, to: dNode)
graph.addEdge(from: bNode, to: eNode)
graph.addEdge(from: cNode, to: fNode)
graph.addEdge(from: cNode, to: gNode)
graph.addEdge(from: eNode, to: hNode)


func breadthFirstSearch(graph: Graph, source: GraphNode){
  var visitedNodes = Queue<GraphNode>()
  for node in graph.nodes{
    node.isVisited = false
    node.distance = nil
    node.predecessor = nil
    //print(node.label)
  }
  source.isVisited = true
  source.distance = 0
  source.predecessor = nil
  visitedNodes.enqueue(element: source)
    
  while !visitedNodes.isEmpty{
    if let currentNode = visitedNodes.dequeue(){
      for edge in currentNode.neighbors {
        if !edge.neighbor.isVisited {
          edge.neighbor.isVisited = true
          print(edge.neighbor.label)
          edge.neighbor.distance = currentNode.distance! + 1
          edge.neighbor.predecessor = currentNode
          visitedNodes.enqueue(element: edge.neighbor)
        }
      }
    }
  }
}

breadthFirstSearch(graph: graph, source: aNode)


