//
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
