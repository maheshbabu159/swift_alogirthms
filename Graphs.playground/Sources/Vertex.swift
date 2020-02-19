import Foundation

public class Vertex {
    var key:String?
    var neighbors: Array<Edge>
    init() {
        self.neighbors = Array<Edge>()
    }
}
