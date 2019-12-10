//
//  ThirdViewController.swift
//  R'Budget
//
//  Created by Kobe Braga on 11/9/19.
//  Copyright © 2019 weislost. All rights reserved.
//

import UIKit
//This is Extravagant
class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        //This allows tap to hide keyboard
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self.view,
                                         action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
//_______________________________________________________________________________________
    //Back Button
    @IBAction func buttonBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
//________________________________________________________________________________________
        //SALARY OUTPUTS
        @IBOutlet weak var numFood: UILabel!
        @IBOutlet weak var numTrans: UILabel!
        @IBOutlet weak var numEntertain: UILabel!
        @IBOutlet weak var numHouse: UILabel!
        @IBOutlet weak var numHealthcare: UILabel!
        @IBOutlet weak var numInsurance: UILabel!
        @IBOutlet weak var numExtra: UILabel!
//_________________________________________________________________________________________
        //Declarations
        @IBOutlet weak var textSalary: UILabel!
        @IBOutlet weak var numInput: UITextField!
//__________________________________________________________________________________________
        //Submit + Basecode
        @IBAction func buttonSubmit(_ sender: Any) {
            
            if let numUSD = Double(numInput.text!){
                let numFoodd = Double(round((numUSD * 0.15) * 100) / 100)
                let numTranss = Double(round((numUSD * 0.18) * 100) / 100)
                let numEntertainn = Double(round((numUSD * 0.20) * 100) / 100)
                let numHousee = Double(round((numUSD * 0.35) * 100) / 100)
                let numHealthcaree = Double(round((numUSD * 0.06) * 100) / 100)
                let numInsurancee = Double(round((numUSD * 0.06) * 100) / 100)
                let numExtraa = Double(round((numUSD * 0) * 100) / 100)
                
                numFood.text = "$\(numFoodd)"
                numTrans.text = "$\(numTranss)"
                numEntertain.text = "$\(numEntertainn)"
                numHouse.text = "$\(numHousee)"
                numHealthcare.text = "$\(numHealthcaree)"
                numInsurance.text = "$\(numInsurancee)"
                numExtra.text = "$\(numExtraa)"
            }
        }
}
