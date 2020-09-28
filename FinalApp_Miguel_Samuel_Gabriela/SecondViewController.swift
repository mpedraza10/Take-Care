//
//  SecondViewController.swift
//  FinalApp_Miguel_Samuel_Gabriela
//
//  Created by Miguel Pedraza on 05/11/18.
//  Copyright © 2018 MIguel_1284216. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var genderBar: UISegmentedControl!
    @IBOutlet weak var diabetesSwitch: UISwitch!
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var lblCc: UILabel!
    @IBOutlet weak var lblExcercise: UILabel!
    @IBOutlet weak var outCalculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var weight = 0.0
    var height = 0.0
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        weight = Double(txtWeight.text!)!
        height = Double(txtHeight.text!)!
        let bmi = (weight / (height * height))
        let age = Int(txtAge.text!)!
        
        lblBMI.text = "\(bmi)"
        
        if genderBar.selectedSegmentIndex == 0 {
            if bmi <= 20.9 {
                lblCc.text = "\(txtName.text!) your weight is lower than normal."
            }
            else if bmi >= 21 && bmi <= 24.9 {
                lblCc.text = "\(txtName.text!) your weight is normal."
            }
            else if bmi >= 25 && bmi <= 29.9 {
                lblCc.text = "\(txtName.text!) you have overweight."
            }
            else if bmi >= 30 && bmi <= 39.9 {
                lblCc.text = "\(txtName.text!) you have obesity."
            }
            else {
                lblCc.text = "\(txtName.text!) you have severe obesity."
            }
        }
        else if genderBar.selectedSegmentIndex == 1 {
            if bmi <= 18.9 {
                lblCc.text = "\(txtName.text!) your weight is lower than normal."
            }
            else if bmi >= 19 && bmi <= 24.9 {
                lblCc.text = "\(txtName.text!) your weight is normal."
            }
            else if bmi >= 25 && bmi <= 26.9 {
                lblCc.text = "\(txtName.text!) you have overweight."
            }
            else if bmi >= 27 && bmi <= 39.9 {
                lblCc.text = "\(txtName.text!) you have obesity."
            }
            else {
                lblCc.text = "\(txtName.text!) you have severe obesity."
            }
        }
        
        if diabetesSwitch.isOn == true {
            lblExcercise.text = "\(txtName.text!) the best exercises you can do in order to fight diabetes are aerobic excercises, such as walking at least 30 minutes a day."
        }
        else if age <= 18 {
            lblExcercise.text = "\(txtName.text!) you should do at least 1 hour of physical excercise."
        }
        else {
            lblExcercise.text = "\(txtName.text!) you should to at least either 2 hours of moderate excercise or 1 hour and 75 minutes of intese excercise."
        }
        
        outCalculate.isEnabled = false
    }
    @IBAction func btnClear(_ sender: UIButton) {
        txtName.text = ""
        txtAge.text = ""
        txtHeight.text = ""
        txtWeight.text = ""
        diabetesSwitch.isOn = true
        lblBMI.text = "BMI"
        lblCc.text = "Corporal Composition"
        lblExcercise.text = "Recommended Exercise"
        outCalculate.isEnabled = true
    }
    

}
