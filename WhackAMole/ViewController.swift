//
//  ViewController.swift
//  WhackAMole
//
//  Created by Melissa on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonBackgroundImage: UIButton!
    
    
    var moleWheel = MoleWheel()
    var timer = NSTimer()
    var photos = [String]()

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
        
    
    @IBAction func moleHoleButton(sender: AnyObject) {
         startGame()


    }
    

    @IBAction func startButton(sender: AnyObject) {
        startGame()
        
        
    }
    
    func startGame() {
        let photoIndex = moleWheel.getRandomPhotoIndex()
        let currentImage = moleWheel.photos[photoIndex]
        buttonBackgroundImage.setImage(currentImage, forState: UIControlState.Selected)
        
        
    }
    

}

