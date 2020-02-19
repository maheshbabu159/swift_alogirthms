import Foundation

public class Graph {
    public var vertices: Array<Vertex>
    public var isDirected: Bool
    
    init() {
        vertices = Array<Vertex>()
        isDirected = true
    }
    
    //Create new vertex
    public func addVertex(key: String) -> Vertex {
        
        //set the key
        let childVertex: Vertex = Vertex()
        childVertex.key = key
        
        
        //add the vertex to the graph canvas
        vertices.append(childVertex)
        
        return childVertex
    }
    
    public func addEdge(source: Vertex, neighbor: Vertex, weight: Int) {
        //new edge
        let newEdge = Edge()
        //establish default properties
        newEdge.neighbor = neighbor
        newEdge.weight = weight
        source.neighbors.append(newEdge)
        //check condition for an undirected graph
        if isDirected == false {
            //create a new reversed edge
            let reverseEdge = Edge()
                                    
            //establish the reversed properties
            reverseEdge.neighbor = source
            reverseEdge.weight = weight
            neighbor.neighbors.append(reverseEdge)
        }
    }
}
