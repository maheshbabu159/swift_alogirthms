import Foundation

public class GraphEdge {
    var neighbor:GraphVertex
    var weight:Int
    var isDirected = false
    public init(){
        weight = 0
        neighbor = GraphVertex()
    }
}
