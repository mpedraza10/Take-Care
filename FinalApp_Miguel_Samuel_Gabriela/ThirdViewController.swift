//
//  ThirdViewController.swift
//  FinalApp_Miguel_Samuel_Gabriela
//
//  Created by Miguel Pedraza on 17/11/18.
//  Copyright © 2018 MIguel_1284216. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblCounter: UILabel!
    @IBOutlet weak var btnSubmitOut: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmit(_ sender: UIButton) {
        let age = Int(txtAge.text!)!
        
        if age <= 20 {
            lblText.text = "\(txtName.text!) you have a probability of 0.06% to develop Beast Cancer"
        }
        else if age > 21 && age <= 30 {
            lblText.text = "\(txtName.text!) you have a probability of 0.44% to develop Beast Cancer"
        }
        else if age > 31 && age <= 40 {
            lblText.text = "\(txtName.text!) you have a probability of 1.45% to develop Beast Cancer"
        }
        else if age > 41 && age <= 50 {
            lblText.text = "\(txtName.text!) you have a probability of 2.31% to develop Beast Cancer"
        }
        else if age > 51 && age <= 60 {
            lblText.text = "\(txtName.text!) you have a probability of 3.49% to develop Beast Cancer"
        }
        else {
            lblText.text = "\(txtName.text!) you have a probability of 3.84% to develop Beast Cancer"
        }
        
        counter = counter + 1
        lblCounter.text = "\(counter)"
        
        btnSubmitOut.isEnabled = false
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        txtName.text = ""
        txtAge.text = ""
        lblText.text = ""
        btnSubmitOut.isEnabled = true
    }
    
}
