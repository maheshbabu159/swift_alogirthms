import Foundation
public class Graph{
    public var nodes: Array<GraphNode>
    public init(){
      self.nodes = Array<GraphNode>()
    }
    public func addNode(_ label: String){
      let newNode = GraphNode(label)
      nodes.append(newNode)
    }
    public func addNode(_ node: GraphNode){
       nodes.append(node)
    }
    public func addEdge(from source: GraphNode, to destination: GraphNode){
      let newEdge = GraphVertex(destination)
      source.neighbors.append(newEdge)
      destination.neighbors.append(GraphVertex(source))
    }
}
