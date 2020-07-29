//链表相关
//  LinkedList.swift
//  LeetCode
//
//  Created by apple on 2020/7/27.
//  Copyright © 2020 apple. All rights reserved.
//
import Foundation
///合并两个有序链表
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
///递归
class Solution_21 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }else if l2 == nil {
            return l1
        }else if l1!.val < l2!.val{
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        }else{
            l2?.next = mergeTwoLists(l1, l2?.next)
            return l2
        }
    }
}
///执行用时：20 ms
///内存消耗：20.9 MB

///剑指offer-06 从尾到头打印链表
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
class Solution_offer_06 {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var listArr: Array<Int> = []
        var res: Array<Int> = []
        var head = head
        while  head != nil {
            listArr.append(head!.val)
            head = head?.next
        }
//        listArr = listArr.reversed()
//        return listArr
        for i in 0 ..< listArr.count {
            res.append(listArr[listArr.count - i - 1])
        }
        return res
    }
}

///删除排序链表中的重复元素
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
class Solution_83 {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
           let dummy = ListNode(-1)
            var newHead = head
            dummy.next = newHead
            
            while newHead != nil {
                if newHead?.val == newHead?.next?.val {
                    newHead?.next = newHead?.next?.next
                } else {
                    newHead = newHead?.next
                }
            }
            
            return dummy.next
        
    }
}
/*1.当前节点和下一个节点的值相同，就跳过下一个， 指向下下一个结点
2.如果值不相同，节点向后移动**/

///141 环形链表
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
class Solution_141 {
    func hasCycle(_ head: ListNode?) -> Bool {
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
//双指针，即快慢指针，空间复杂度O(1)

///206.反转链表
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
class Solution_206{
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

///237.删除链表中的结点
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
//1.先将该结点后面的值赋值给当前的结点
//2.然后将该结点的的next指向下下一个结点，也就相当于删除了该结点
class Solution_237 {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node!.next = node!.next!.next
    }
}

///876.求链表的中间结点
///给定一个带有头结点 head 的非空单链表，返回链表的中间结点。
///如果有两个中间结点，则返回第二个中间结点。
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
//快慢指针解决此问题
//空间复杂度O(1),时间复杂度O(n)
class Solution_876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
