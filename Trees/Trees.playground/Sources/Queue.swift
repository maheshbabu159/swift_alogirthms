import Foundation
public class Queue {
    fileprivate var array:[TreeNode] = []
    public func deQueue() -> TreeNode {
        let deQueueItem = self.array.removeFirst()
        //print("DEQUEUE ITEM : \(deQueueItem.description)")
        return deQueueItem

    }
    public func enQueue(item:TreeNode){
        //print("ENQUEUE ITEM : \(item.description)")
        self.array.append(item)
    }
    public var isEmpty: Bool {
        return self.array.isEmpty
    }
    public func clear() {
        self.array.removeAll()
    }
    
    public var count: Int {
        return self.array.count
    }
//    public var description: String {
//        let top = "### QUEUE ###\n\n"
//        let bottom = "\n\n#############\n"
//        let elements = self.array.map { $0.description }.joined(separator: " ")
//        return top + elements + bottom
//    }
}
