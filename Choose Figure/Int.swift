//  Int.swift
//  Choose Figure
//
//  Created by Tushar Sharma.
//  Copyright © 2019. All rights reserved.
//

import Foundation

extension Int{

        static func random(minNum: Int, maxNum: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNum - minNum)) + UInt32(minNum))
    }
    // generate array with unique random values
    static func uniqueRandoms(numberOfRandoms: Int, minNum: Int, maxNum: Int) -> [Int] {
        
        var randoms: [Int] = []
        if maxNum - minNum + 1 < numberOfRandoms {
            return randoms
        }
        
        while randoms.count < numberOfRandoms {
            let randomNumber = Int.random(minNum:minNum, maxNum:maxNum)
            if !randoms.contains(randomNumber) {
                randoms.append(randomNumber)
            }
        }
        
        return randoms
    }
    
    
    static func randoms(numberOfRandoms: Int, minNum: Int, maxNum: Int, forbiddenValues: [Int]) -> [Int] {
        // if there is any valid values
        var valid = false
        for value in minNum...maxNum {
            if !forbiddenValues.contains(value) {
                valid = true
                break
            }
        }
        if !valid {
            return [] 
        }
        var randoms: [Int] = []
        
        while randoms.count < numberOfRandoms {
            let randomNumber = Int.random(minNum:minNum, maxNum: maxNum)
            if !forbiddenValues.contains(randomNumber) {
                randoms.append(randomNumber)
            }
        }
        
        return randoms
    }
}
// done
