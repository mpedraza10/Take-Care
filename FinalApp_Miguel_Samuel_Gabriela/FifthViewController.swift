//
//  FifthViewController.swift
//  FinalApp_Miguel_Samuel_Gabriela
//
//  Created by Miguel Pedraza on 17/11/18.
//  Copyright © 2018 MIguel_1284216. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var beersBar: UISegmentedControl!
    @IBOutlet weak var lblProb: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var btnSubmitOut: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmit(_ sender: UIButton) {
        
        if beersBar.selectedSegmentIndex == 0 {
            lblProb.text = "\(txtName.text!) you have a minor risk to develop Breast Cancer."
        }
        else if beersBar.selectedSegmentIndex == 1 {
            lblProb.text = "\(txtName.text!) you have a mayor risk of 15% to develop Breast Cancer."
        }
        else if beersBar.selectedSegmentIndex == 2 {
            lblProb.text = "\(txtName.text!) you have a mayor risk of 25% to develop Breast Cancer."
        }
        
        counter = counter + 1
        lblCount.text = "\(counter)"
        
        btnSubmitOut.isEnabled = false
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        txtName.text = ""
        lblProb.text = ""
        btnSubmitOut.isEnabled = true
    }
    
}
