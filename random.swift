//
//  random.swift
//  WhackAMole
//
//  Created by ling on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import Foundation

// 16 is default
var testArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]


func randomTest() -> Int {
    let unsignedArrayCount = UInt32(15 + 15)
        // 2nd level let unsignedArrayCount = UInt32(15 + 80)
        // 3rd level let unsignedArrayCount = UInt32(15 + 160)
    let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    let randomNumber = Int(unsignedRandomNumber)
    var indexNumber: Int
    if randomNumber <= 14 {
        indexNumber = randomNumber
    }
        
    else {
        indexNumber = 15
    }
    
    
    
    return testArray[indexNumber]
}
