//
//  ViewController.swift
//  animation
//
//  Created by admin25 on 4/12/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
        @IBOutlet weak var butto2constraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        butto2constraint.constant -= view.bounds.width
    }
    var performOnce = false
    override func viewDidAppear(_ animated: Bool) {
        
        if(!performOnce){
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.butto2constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            performOnce = true
        
        }
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

