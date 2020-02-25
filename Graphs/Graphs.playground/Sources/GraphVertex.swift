import Foundation
public class GraphVertex {
    var data:String?
    var neighbors:Array<GraphEdge>
    var isVisited = false
    public init(){
        self.neighbors = Array<GraphEdge>()
    }
}
