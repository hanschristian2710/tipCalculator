//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Hans Christian on 12/23/16.
//  Copyright © 2016 CHR27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billEntered: UITextField!
    @IBOutlet weak var tipSelection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClick(_ sender: AnyObject) {
        view.endEditing(true)
    }
  
    @IBAction func tipCalculated(_ sender: AnyObject) {
        // Initialized possible tips percentage
        let tipPercentage = [0.1, 0.15, 0.18, 0.2, 0.25]
        let bEntered = Double(billEntered.text!) ?? 0
        
        
        let tip = bEntered * tipPercentage[tipSelection.selectedSegmentIndex]
        let total = bEntered + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }

}

