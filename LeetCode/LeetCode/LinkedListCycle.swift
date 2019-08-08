//
//  LinkedListCycle.swift
//  LeetCode
//
//  Created by apple on 2019/8/8.
//  Copyright © 2019 apple. All rights reserved.
//
// 141. Linked List Cycle
import Foundation
/*
 Given a linked list, determine if it has a cycle in it.
 
 To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
 */

class  LinkedListCycleSolution {
    func hasCycle(_ head: ListNode?) -> Bool? {
        var fast = head
        var slow = head
        while (slow != nil) && (fast != nil) && ((fast?.next) != nil) {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }
        return false
    }
}
