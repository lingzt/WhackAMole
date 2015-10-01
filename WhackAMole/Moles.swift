//
//  Moles.swift
//  WhackAMole
//
//  Created by Donovan Cotter on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import Foundation
import UIKit

struct MoleWheel {
    
    var photos = [UIImage?]()

    init() {
        
        photos = [UIImage(named: "Donovan.jpg")!, UIImage(named: "Melissa.jpg")!, UIImage(named:"Ling.jpg")!, UIImage(named:"Andrew.jpg")!, UIImage(named:"Brian.jpg")!, UIImage(named:"Charles.jpg")!, UIImage(named:"erika.jpg")!, UIImage(named:"Joel.jpg")!, UIImage(named:"Robb.jpg")!, UIImage(named:"Tim.jpg")!, UIImage(named:"david.jpg")!, UIImage(named:"kate.jpg")!, UIImage(named:"george.jpg")!, UIImage(named:"amelia.jpg")!, UIImage(named:"craig.jpg")!]
        


    }

    
    
    func getRandomPhotoIndex() -> Int {
        
        let unsignedArrayCount = UInt32(photos.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        return Int (unsignedRandomNumber)
        
    }

}