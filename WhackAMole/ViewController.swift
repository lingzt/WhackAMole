//
//  ViewController.swift
//  WhackAMole
//
//  Created by Melissa on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var moleHitCountLabel: UILabel!


    var timer = NSTimer()
    var moleHitCount = 0
    
    var photos = ["Donovan.jpg", "Melissa.jpg", "Ling.jpg", "Andrew.jpg", "Brian.jpg", "Charles.jpg", "erika.jpg", "Joel.jpg", "Robb.jpg", "Tim.jpg", "david.jpg", "kate.jpg", "george.jpg", "amelia.jpg", "craig.jpg", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png", "moleHole.png"]


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
        
    
    @IBAction func photoTapped(sender: AnyObject) {
        
        if imageView.image! != UIImage(named: "moleHole.png") {
            moleHitCount++
            moleHitCountLabel.text = "\(moleHitCount)"
            
        }
        
    }

    @IBAction func startButton(sender: AnyObject) {
        randomPhotoGenerator()
        photoAndGameTimer(0.5, selector: "randomPhotoGenerator")
       
        
    }

        
        func randomPhotoGenerator() {
            let randomPhoto = Int(arc4random_uniform(39))
            let photo = photos[randomPhoto]
            imageView.image = UIImage(named: photo)
//            imageViewTwo.image = UIImage(named: photo)
            
        
    }
    

}

