//
//  TranstionAnimationController.swift
//  UIKit-Animations-Jan31
//
//  Created by Margiett Gil on 2/4/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class TranstionAnimationController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set default image
        imageView.image = UIImage(named: "dog")
        imageView.backgroundColor = .systemTeal
        
        // enable user interaction on the image view or a label as those teo UI elements are set to false by default
        // add gesture to the image view
        imageView.isUserInteractionEnabled = true
        
        
        // add gesture to the image view
        imageView.addGestureRecognizer(tapGesture)
    }
    
    
    @objc private func animate() {
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseOut
        
        if imageView.image == UIImage(named: "dog"){
            // this is swaping
            
            // when changing subview instead of doing it
           imageView.image = UIImage(named: "cat")
            UIView.transition(with: imageView, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                
                self.imageView.image = UIImage(named: "cat")
                    self.imageView.backgroundColor = .systemPink
            }, completion: nil)
        } else {
           UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromLeft, curveOption], animations: {
                       self.imageView.image = UIImage(named: "dog")
            self.imageView.backgroundColor = .purple
                       // if the image is a cat change it to a dog
                   }, completion: nil)
            imageView.image = UIImage(named: "dog")
        }
        
        print("animate")
        
    }


}
