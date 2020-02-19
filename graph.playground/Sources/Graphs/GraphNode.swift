import Foundation

public class GraphNode:Equatable{
    public var data:String
    public var neighbors = Array<GraphVertex>()
    public var distance: Int?

    public init(_ data:String){
        self.data = data
    }
    public static func == (lhs: GraphNode, rhs: GraphNode) -> Bool{
        return lhs.data == rhs.data
    }
}
