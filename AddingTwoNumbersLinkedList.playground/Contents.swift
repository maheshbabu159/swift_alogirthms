import UIKit

/*
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 Example:

 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 */
/**
 * Definition for singly-linked list.
*/
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public var previous: ListNode?
     public init(_ val: Int) {
       self.val = val
       self.next = nil
        self.previous = nil
     }
 }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp:ListNode?
        var res:ListNode?
        var first = l1
        var second = l2
        
        var carry:Int = 0
        var sum:Int = 0
        
        
        // Move first and second pointers to next nodes
        
        if (first?.next == nil && second?.next == nil) {
            sum = carry + (first?.val ?? 0) + (second?.val ?? 0)
            print("Values Sum = \(sum)")
            carry = (sum >= 10) ? 1 : 0;
            print("Carry = \(carry)")
            sum =  sum % 10
            temp = ListNode(sum)
            res = temp
            
            //If the last sum is >10
            if carry >= 1 {
                temp = ListNode(sum)
                res?.next = temp
            }
            return res
        }
        
        while first?.next != nil && second?.next != nil {
            sum = carry + (first?.val ?? 0) + (second?.val ?? 0)
            print("Values Sum = \(sum)")
            carry = (sum >= 10) ? 1 : 0;
            print("Carry = \(carry)")
            sum =  sum % 10

            print("Values Sum = \(sum)")
            
            temp = ListNode(sum)
            if res == nil {
                res = temp
            }else{
                res?.next = temp
            }
            
            first = first?.next
            second = second?.next
            
            // Move first and second pointers to next nodes
            if (first?.next == nil && second?.next == nil) {
                sum = carry + (first?.val ?? 0) + (second?.val ?? 0)
                print("Values Sum = \(sum)")
                carry = (sum >= 10) ? 1 : 0;
                print("Carry = \(carry)")
                sum =  sum % 10
                temp = ListNode(sum)
                res?.next?.next = temp
                
                //If the last sum is >10
                if carry >= 1 {
                    temp = ListNode(sum)
                    res?.next?.next = temp
                }
                
            }
        }
        
        return res
    }
    
    func printResultNode(_ node:ListNode){
        var result = node
        while result.next != nil {
            print("Result node value \(result.val)")
            result = result.next!
            
            if result.next == nil{
                print("Result node last value \(result.val)")

            }
        }
    }
}


let firstListFirstValueNode = ListNode(2)
let firstListSecondValueNode = ListNode(4)
let firstListThridValueNode = ListNode(3)


let secondListFirstValueNode = ListNode(5)
let secondListSecondValueNode = ListNode(6)
let secondListThridValueNode = ListNode(4)

let firstLinkedList = firstListFirstValueNode
firstLinkedList.next = firstListSecondValueNode
firstListSecondValueNode.next = firstListThridValueNode

let secondLinkedList = secondListFirstValueNode
secondListFirstValueNode.next = secondListSecondValueNode
secondListSecondValueNode.next = secondListThridValueNode

let solution = Solution()
let res = solution.addTwoNumbers(firstLinkedList, secondLinkedList)

print("===========Result:==========")
solution.printResultNode(res!)

