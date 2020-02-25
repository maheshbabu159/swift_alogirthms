import Foundation

public class Graph{
    var nodes:Array<GraphVertex>
    var isDirected:Bool
    public init(){
        self.nodes = Array<GraphVertex>()
        self.isDirected = true
    }
    
    public func addNode(_ value:String) -> GraphVertex{
        let vertex = GraphVertex()
        vertex.data = value
        self.nodes.append(vertex)
        return vertex
    }
    
    public func addEdge(_ source:GraphVertex, _ destination:GraphVertex, _ weight:Int){
        let edge = GraphEdge()
        edge.neighbor = destination
        edge.weight = weight
        source.neighbors.append(edge)
        
        // Establish reversed properties
        if(isDirected == false){
            let newEdge = GraphEdge()
            newEdge.neighbor = source
            newEdge.weight = weight
            destination.neighbors.append(newEdge)
        }
        
    }
    
    public func breadthFirstSearch(source:GraphVertex){
        let queue:Queue = Queue()
        queue.enQueue(vertex: source)
        print("\(source.data ?? "n/a")", terminator: " ")
        while !queue.isEmpty() {
            let dequeueItem = queue.deQueue()
            for edge in dequeueItem.neighbors {
                if !edge.neighbor.isVisited {
                    print("\(edge.neighbor.data ?? "n/a")", terminator: " ")
                    queue.enQueue(vertex: edge.neighbor)
                }
               
            }
            dequeueItem.isVisited = true
        }
    }
    
    public func reset(){
        for node in nodes {
            node.isVisited = false
        }
    }
    public func depthFirstSearch(source:GraphVertex){
        source.isVisited = true
        
        print("\(source.data ?? "n/a")", terminator: " ")
        for edge in source.neighbors {
            if edge.neighbor.isVisited != true {
                depthFirstSearch(source: edge.neighbor)
            }
        }
    }
    
    public func processDijkstra(source:GraphVertex, destination:GraphVertex) {
        var frontier:[Path] = Array()
        var finalPaths:[Path] = Array()
        
        for e in source.neighbors {
            let newPath = Path()
            newPath.destination = e.neighbor
            newPath.previous = nil
            newPath.total = e.weight
            frontier.append(newPath)
        }
        
        //construct the best path
        
        var bestPath: Path = Path()
        while(frontier.count != 0) {
            
            //support path changes using the greedy approach
            bestPath = Path()
            var pathIndex: Int = 0
            for x in 0..<frontier.count {
                let itemPath: Path = frontier[x]
                if (bestPath.total == nil) || (itemPath.total < bestPath.total) {
                    bestPath = itemPath
                    pathIndex = x
                }
            }
            //enumerate the bestPath edges
            for e in bestPath.destination.neighbors {
                let newPath: Path = Path()

                newPath.destination = e.neighbor
                newPath.previous = bestPath
                newPath.total = bestPath.total + e.weight

                //add the new path to the frontier
                frontier.append(newPath)
            }

            //preserve the bestPath
            finalPaths.append(bestPath)

            //remove the bestPath from the frontier
            frontier.remove(at: pathIndex)

        } //end while
         
        //establish the shortest path as an optional
        var shortestPath: Path! = Path()

        for itemPath in finalPaths {
            if (itemPath.destination.data == destination.data) {
                if (shortestPath.total == nil) || (itemPath.total < shortestPath.total) {
                     shortestPath = itemPath
                 }
             }
         }
        print(shortestPath.total!)
      }
}
