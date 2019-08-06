//
//  TwoSum.swift
//  LeetCode
//
//  Created by apple on 2019/8/6.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation
/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */
//时间复杂度O(n)
class Solution{
    func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()
        for i in 0 ..< nums.count{
            if let target = dic[nums[i]] {
                return [target, i]
            }
            dic[target - nums[i]] = i
        }
        return [0]
    }
}

//时间复杂度O(n^2)
class Solution2{
    func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
        for i in stride(from: 0, to: nums.count, by: 1) {
            for j in stride(from: i+1, to: nums.count, by: 1){
                if nums[j] == target - nums[i]{
                    return [i,j]
                }
            }
        }
        return [0]
    }
}
class Solution3{
    func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i+1 ..< nums.count{
                if nums[j] == target - nums[i]{
                    return [i,j]
                }
            }
        }
        return [0]
    }
}
