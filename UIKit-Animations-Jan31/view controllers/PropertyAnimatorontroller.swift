//
//  PropertyAnimatorontroller.swift
//  UIKit-Animations-Jan31
//
//  Created by Margiett Gil on 2/4/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class PropertyAnimatorontroller: UIViewController {

    @IBOutlet weak var duckImage: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    // need an instance to a UIViewPropertyAnimator
   private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        //instantiate the animator property
        animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut, animations: {
            // here we declare the animation
            //perform a tranform
            self.duckImage.transform = CGAffineTransform(scaleX: 3.5, y: 2)
            
        })


    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        
        animator.fractionComplete = CGFloat(sender.value)
        
    }
    
    

}
