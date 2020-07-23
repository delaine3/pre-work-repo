//
//  ViewController.swift
//  finalTipCalculator
//
//  Created by Delaine Abner on 23/07/2020.
//  Copyright © 2020 Coddepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    
    @IBAction func tipCalculator(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18,0.2]
        
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
            
        totalLabel.text = String(format: "$%.2f",total)
    }
}

