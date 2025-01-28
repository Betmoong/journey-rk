//
//  01_01_FindMaxNum.swift
//  algorithm-swift
//
//  Created by Rocky on 1/28/25.
//

import Foundation

// 최댓값 찾기

// max 메서드 사용
func findMaxNum(_ array: [Int]) -> Int {
    return array.max()!
}

// 1. 하나의 원소를 다른 원소들과 비교해서 최댓값인지 분석하는 방법
// - 각 숫자마다 모든 다른 숫자와 비교해서 최대값인지 확인. 만약 다른 모든 값보다 크다면 반복문을 중단
func findMaxNum2(_ array: [Int]) -> Int {
    for number in array {
        var isMaxNum = true
        
        for compareNumber in array {
            if number < compareNumber {
                isMaxNum = false
                break
            }
        }
        
        if isMaxNum {
            return number
        }
    }
    return 0
}

// 2. 하나의 변수를 잡아서 그 변수와 비교하며 가장 큰 수를 찾는 방법
// - 가장 큰 수를 저장할 변수를 만들고, 배열을 돌아가면서 그 변수와 비교. 만약 값이 더 크다면, 그 변수에 할당
func findMaxNum3(_ array: [Int]) -> Int {
    var maxNum = array[0]
    
    for number in array {
        if number > maxNum {
            maxNum = number
        }
    }
    
    return maxNum
}

print("정답 = 6 / 현재 풀이 값 = \(findMaxNum3([3, 5, 6, 1, 2, 4]))")
print("정답 = 6 / 현재 풀이 값 = \(findMaxNum3([6, 6, 6]))")
print("정답 = 1888 / 현재 풀이 값 = \(findMaxNum3([6, 9, 2, 7, 1888]))")
