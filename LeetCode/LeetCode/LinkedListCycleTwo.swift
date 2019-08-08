//
//  LinkedListCycleTwo.swift
//  LeetCode
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 apple. All rights reserved.
//
//142. Linked List Cycle II
import Foundation
/*
 Given a linked list, return the node where the cycle begins. If there is no cycle, return null.
 
 To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
 
 Note: Do not modify the linked list.
 */
class Solution142 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return nil
        }
        
        var slow = head
        var fast = head
        var entry = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                while !(slow === entry) {
                    slow = slow?.next
                    entry = entry?.next
                }
                return entry
            }
        }
        
        return nil
    }
}
