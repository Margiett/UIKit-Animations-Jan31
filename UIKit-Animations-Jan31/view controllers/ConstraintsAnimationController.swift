//
//  ConstraintsAnimationController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    // added the view constraint within the controller in order to gain access to it.
    @IBOutlet weak var viewYConstraint: NSLayoutConstraint!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
    }

    
    @IBAction func animateUpButton(_ sender: UIButton) {
        // we want it to up so inside of here it needs to be a negative value..
        
        viewYConstraint.constant -= 100
        // plus 100 .. removing 100 from the constraint
    }
    
    
    
    @IBAction func animateDownButton(_ sender: UIButton) {
        // to go down you need a positive value
        
        viewYConstraint.constant += 100
        // plus 100 .. adding 100
        
    }
    
    

}
