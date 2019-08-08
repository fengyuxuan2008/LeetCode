//
//   SwapNodesInPairs.swift
//  LeetCode
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 apple. All rights reserved.
//

//24. Swap Nodes in Pairs
import Foundation
/*
 Given a linked list, swap every two adjacent nodes and return its head.
 
 You may not modify the values in the list's nodes, only nodes itself may be changed.
 
 Example:
 
 Given 1->2->3->4, you should return the list as 2->1->4->3.
 */
/**
 /**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
 */
class  SwapNodesInPairsSolution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let node = head?.next
        head?.next = swapPairs(head?.next?.next)
        node?.next = head
        return node
    }
}

class  SwapNodesInPairsSolution2 {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var current = head
        let result = head?.next ?? head
        while let next = current?.next {
            let nextNext = next.next
            next.next = current
            current?.next = nextNext?.next ?? nextNext
            current = nextNext
        }
        return result
    }
}
