import Foundation

public class GraphVertex{
    public var neighbor: GraphNode
    public var weight: Int?
    public init(_ neighbor: GraphNode){
      self.neighbor = neighbor
    }
}
