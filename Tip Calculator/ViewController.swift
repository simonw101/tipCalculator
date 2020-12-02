//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Simon Wilson on 02/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTotalTextField: UITextField!
    
    @IBOutlet weak var tipPercentageTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateClicked(_ sender: Any) {
        
        let billTotal = Double(billTotalTextField.text!)!
        let tipPercentage = Double(tipPercentageTextField.text!)!
        
        let tip = billTotal * (tipPercentage / 100)
        
        resultLabel.text = "Tip: $\(Int(tip))"
        
        print(tip)
        
    }
    
}

