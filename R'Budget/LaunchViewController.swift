//
//  LaunchViewController.swift
//  R'Budget
//
//  Created by Kobe Braga on 11/9/19.
//  Copyright © 2019 weislost. All rights reserved.
//

import UIKit

//INITIAL SCREEN
class LaunchViewController: UIViewController {
    //BUTTONS
    @IBAction func buttonConservative(_ sender: Any) {
        performSegue(withIdentifier: "Conservative", sender: self)
    }
    @IBAction func buttonNormal(_ sender: Any) {
        performSegue(withIdentifier: "Normal", sender: self)
    }
    @IBAction func buttonExtravagant(_ sender: Any) {
        performSegue(withIdentifier: "Extravagant", sender: self)
    }
//________________________________________________________________________________
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
