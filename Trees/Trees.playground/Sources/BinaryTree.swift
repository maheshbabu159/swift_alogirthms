import Foundation
public class BinaryTree {
    var rootNode:TreeNode?
    let queue = Queue()
    public init(){
        
    }
    public func insert(_ data:Int){
        let newNode = TreeNode(data)
        if let root = self.rootNode {
            //Insert by checking the correct position by traversing
            insert(root, newNode)
        }else{
            print("Setting root = \(data)")
            self.rootNode = newNode
        }
    }
    
    public func insert(_ rootNode:TreeNode, _ node:TreeNode){
        if node.data < rootNode.data   {
            print("Data is lesser & left = \(node.data) ")
            //Insert right
            if let leftNode = rootNode.leftNode {
                self.insert(leftNode,node)
            }else{
                rootNode.leftNode = node
            }
        }else{
            print("Data is greater & right \(node.data)")
            if let rightNode = rootNode.rightNode {
                insert(rightNode, node)
            }else{
                rootNode.rightNode = node
            }
        }
    }
    
    public func search(_ element:Int) -> Bool {
        guard let rootNode = self.rootNode else { return false }
        
        //If data is of root node
        if rootNode.data == element {
            return true
        }
        
        //Search other nodes iteratively
        return self.search(rootNode, element)
    }
    public func search(_ rootNode:TreeNode, _ element:Int)-> Bool {
        if rootNode.data == element {
            return true
        }else if element > rootNode.data {
            if let rightNode = rootNode.rightNode {
                return self.search(rightNode, element)
            }else{
                return false
            }
        }else{
            if let leftNode = rootNode.leftNode {
                return self.search(leftNode, element)
            }else{
                return false
            }
        }
    }
}
extension BinaryTree {
    
    public func traverse(){
        print("\nPRE-ORDER TRAVERSE")
        self.preorder(self.rootNode)
        print("\n\nIN-ORDER TRAVERSE")
        self.inorder(self.rootNode)
        print("\n\nPOST-ORDER TRAVERSE")
        self.postorder(self.rootNode)
        print("\n\n BREADTH FIRST TRAVERSAL")
        self.breadthFirstSearch()
        print("\n\n LEVEL ORDER TRAVERSAL")
        self.levelOrder()
        print("\n\n DEPTH FIRST TRAVERSAL")
        self.depthFirstSearch()
    }
    
    private func breadthFirstSearch(){
        self.queue.clear()
        
        guard let root = self.rootNode else { return }
        self.queue.enQueue(item: root)
        
        while !self.queue.isEmpty {
            let item = self.queue.deQueue()
            print("\(item.data)", terminator: " ")
            
            if let left = item.leftNode {
                self.queue.enQueue(item: left)
            }
            if let right = item.rightNode {
                self.queue.enQueue(item: right)
            }

        }
        
    }
    
    private func depthFirstSearch(){
        var root = self.rootNode
        var stack = [TreeNode]()
          
        while root != nil || !stack.isEmpty {
            if root != nil {
                stack.append(root!)
                print("\(root!.data)", terminator: " ")
                root = root?.leftNode
            }else{
                root = stack.removeLast()
                root = root?.rightNode
                
            }
        }
    }
    // LNR : LEFT NODE RIGHT
    private func inorder(_ node: TreeNode?) {
        guard let _ = node else { return }
        self.inorder(node?.leftNode)
        print("\(node!.data)", terminator: " ")
        self.inorder(node?.rightNode)
        //self.levelOrder()
    }
    
    // NLR : NODE LEFT RIGHT
    private func preorder(_ node: TreeNode?) {
        guard let _ = node else { return }
        print("\(node!.data)", terminator: " ")
        self.preorder(node?.leftNode)
        self.preorder(node?.rightNode)
    }
    
    // LRN :  LEFT RIGHT NODE
    private func postorder(_ node: TreeNode?) {
        guard let _ = node else { return }
        self.postorder(node?.leftNode)
        self.postorder(node?.rightNode)
        print("\(node!.data)", terminator: " ")
    }
    
    private func levelOrder() {
        guard let node = self.rootNode else { return }
        self.queue.enQueue(item: node)
        while !self.queue.isEmpty {
            let dequeueNode = self.queue.deQueue()
            print("\(dequeueNode.data)", terminator: " ")
            if let leftNode = dequeueNode.leftNode {
                self.queue.enQueue(item: leftNode)
            }

            if let rightNode = dequeueNode.rightNode {
                self.queue.enQueue(item: rightNode)
            }
        }

    }
}
