//
//  SecondViewController.swift
//  R'Budget
//
//  Created by Kobe Braga on 11/9/19.
//  Copyright © 2019 weislost. All rights reserved.
//
import UIKit
//This is Conservative
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        //this allows tap to hide keyboard
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self.view,
                                         action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
//_______________________________________________________________________________
   //Back button
    @IBAction func buttonBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
//_______________________________________________________________________________
        //SALARY OUTPUTS
        @IBOutlet weak var numFood: UILabel!
        @IBOutlet weak var numTrans: UILabel!
        @IBOutlet weak var numEntertain: UILabel!
        @IBOutlet weak var numHouse: UILabel!
        @IBOutlet weak var numHealthcare: UILabel!
        @IBOutlet weak var numInsurance: UILabel!
        @IBOutlet weak var numExtra: UILabel!
//__________________________________________________________________________________
        //Declarations
        @IBOutlet weak var textSalary: UILabel!
        @IBOutlet weak var numInput: UITextField!
//________________________________________________________________________________
        //Submit + BaseCode
        @IBAction func buttonSubmit(_ sender: Any) {
            
            if let numUSD = Double(numInput.text!){
                let numFoodd = Double(round((numUSD * 0.13) * 100) / 100)
                let numTranss = Double(round((numUSD * 0.13) * 100) / 100)
                let numEntertainn = Double(round((numUSD * 0.01) * 100) / 100)
                let numHousee = Double(round((numUSD * 0.33) * 100) / 100)
                let numHealthcaree = Double(round((numUSD * 0.08) * 100) / 100)
                let numInsurancee = Double(round((numUSD * 0.12) * 100) / 100)
                let numExtraa = Double(round((numUSD * 0.2) * 100) / 100)
                
                
                
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
