import Foundation
public class GraphNode:Equatable{
    public var label: String
    public var neighbors: Array<GraphVertex>
    public var color: String?
    public var isVisited:Bool = false
    public var predecessor: GraphNode?
    public var distance: Int?
    public init(_ label: String){
        self.label = label
        self.neighbors = Array<GraphVertex>()
    }
    public static func == (lhs: GraphNode, rhs: GraphNode) -> Bool{
        return lhs.label == rhs.label
    }
}


