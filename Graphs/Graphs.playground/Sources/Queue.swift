import Foundation

public class Queue{
    var array:[GraphVertex]
    public init(){
        array = [GraphVertex]()
    }
    
    public func isEmpty() -> Bool {
        return self.array.isEmpty == true
    }
    
    public func enQueue(vertex:GraphVertex){
        self.array.append(vertex)
    }
    public func deQueue() -> GraphVertex {
        return self.array.removeFirst()
    }
}
