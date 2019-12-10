//
//  ViewController.swift
//  R'Budget
//
//  Created by Kobe Braga on 11/9/19.
//  Copyright © 2019 weislost. All rights reserved.
//
import UIKit
//This is Normal
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //this allows tap to hide keyboard
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
    
//__________________________________________________________________________________________
    //Declarations
    @IBOutlet weak var textSalary: UILabel!
    @IBOutlet weak var numInput: UITextField!
//__________________________________________________________________________________________
    //Submit + BaseCode
    @IBAction func buttonSubmit(_ sender: Any) {
        
        if let numUSD = Double(numInput.text!){
            let numFoodd = Double(round((numUSD * 0.126) * 100) / 100)
            let numTranss = Double(round((numUSD * 0.158) * 100) / 100)
            let numEntertainn = Double(round((numUSD * 0.051) * 100) / 100)
            let numHousee = Double(round((numUSD * 0.329) * 100) / 100)
            let numHealthcaree = Double(round((numUSD * 0.081) * 100) / 100)
            let numInsurancee = Double(round((numUSD * 0.119) * 100) / 100)
            let numExtraa = Double(round((numUSD * 0.136) * 100) / 100)
            
            
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
