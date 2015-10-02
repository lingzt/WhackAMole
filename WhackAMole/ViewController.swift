//
//  ViewController.swift
//  WhackAMole
//
//  Created by Melissa on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
//    var moleWheel = MoleWheel()
    var timer = NSTimer()
    var photos = ["Donovan.jpg", "Melissa.jpg", "Ling.jpg", "Andrew.jpg", "Brian.jpg", "Charles.jpg", "erika.jpg", "Joel.jpg", "Robb.jpg", "Tim.jpg", "david.jpg", "kate.jpg", "george.jpg", "amelia.jpg", "craig.jpg"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func photoAndGameTimer(ti: Double, selector: Selector) {
        timer = NSTimer.scheduledTimerWithTimeInterval(ti, target: self, selector: selector, userInfo: nil, repeats: true)
    
    }
        
    

    @IBAction func startButton(sender: AnyObject) {
        startGame()
        let randomPhoto = Int(arc4random_stir())
        var photo = photos[randomPhoto]
        ImageView.image = UIImage(named: photo)
    
        
    }
    
    func startGame() {
        
//        let unsignedArrayCount = UInt32(photos.count)
//        let randomPhoto = arc4random_uniform(unsignedArrayCount)
//        ImageView.image = UIImage(named: randomPhoto)
        
        
//        let photoIndex = moleWheel.getRandomPhotoIndex()
//        let currentImage = moleWheel.photos[photoIndex]
        
        
        
    }
    

}

