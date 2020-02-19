import UIKit

class Node {
    var value:Int
    var next:Node?
    init(_ value:Int) {
        self.value = value
    }
}

class SingleLinkedList {
    var head:Node?
   
    var tail:Node?
//    Append with Big O (n)
    func appendBigON(_ value:Int){
        let newNode = Node(value)
        var i = 0
        if var temp = head {
            while temp.next != nil {
                i += 1
                temp = temp.next!
            }
            temp.next = newNode
        } else {
            head = newNode
        }
        print(i)
    }
    func appendBigOOne(_ value:Int){
        let newNode = Node(value)
        if head == nil {
            head = newNode
            tail = newNode
        }else{
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func searchBigON(_ value:Int) -> Bool {
        var flag = false
        if head == nil { return false }
        
        var headerNode = head
        while headerNode?.next != nil  {
            if headerNode?.value == value {
                flag = true
                break
            }
            headerNode = headerNode?.next
            
            if headerNode?.next == nil {
                if headerNode?.value != value { return false }else { return true }
            }

        }
        return flag
    }
}

extension SingleLinkedList: CustomStringConvertible {
  public var description: String {
    var text = "["
    var node = head

    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    return text + "]"
  }
}




let singleLinkedList = SingleLinkedList()
singleLinkedList.appendBigOOne(5)
singleLinkedList.appendBigOOne(10)
singleLinkedList.appendBigOOne(16)
singleLinkedList.appendBigOOne(8)
singleLinkedList.appendBigOOne(5)
singleLinkedList.appendBigOOne(3)
singleLinkedList.appendBigOOne(4)
singleLinkedList.appendBigOOne(9)
print(singleLinkedList.description)


let searchResult = singleLinkedList.searchBigON(9)
print("Search = \(searchResult)")
