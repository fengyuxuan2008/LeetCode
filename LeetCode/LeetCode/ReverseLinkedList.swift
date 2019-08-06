//
//  ReverseLinkedList.swift
//  LeetCode
//
//  Created by apple on 2019/8/6.
//  Copyright © 2019 apple. All rights reserved.
//

// 206. Reverse Linked List
//反转链表
import Foundation
/*
 
 Reverse a singly linked list.
 
 Example:
 
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL

 */

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int){
        self.val = val
        self.next = nil
    }
}
//把前一次读取的node变为下一次读取的next
class ReverseLinkedListSolution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let val = head?.val else { return nil }
        var res = ListNode(val)
        func reverse(_ head: ListNode?){
            guard let node = head else { return }
            let newNode = ListNode(node.val)
            newNode.next = res
            res = newNode
            
            reverse(node.next)
        }
        reverse(head?.next)
        return res
        
    }
}


class ReverseLinkedListSolution2 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var node = head
        var next = head?.next
        node?.next = nil
        while next != nil {
            let hold = next!.next
            next!.next = node
            node = next
            next = hold
        }
        return node
    }
}

/*
 Let's assume the list is: n1 → … → nk-1 → nk → nk+1 → … → nm → Ø
 
 Assume from node nk+1 to nm had been reversed and you are at node nk.
 
 n1 → … → nk-1 → nk → nk+1 ← … ← nm
 
 We want nk+1’s next node to point to nk.
 
 So,
 
 nk.next.next = nk;
 
 Be very careful that n1's next must point to Ø. If you forget about this, your linked list has a cycle in it.
 */
class ReverseLinkedListSolution3 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let p = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return p
    }
}
