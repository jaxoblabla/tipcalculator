//
//  ViewController.swift
//  tipcalculator
//
//  Created by Jackson Hsieh on 1/22/15.
//  Copyright (c) 2015 jax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var resultLabel: UILabel!
   
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        resultLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingchanged(sender: AnyObject) {
        
        var billAmount = billField.text.bridgeToObjectiveC().double.text
        
        var tip = billAmount * 0.1
        var total = billAmount + tip
        
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        
        
        
    }

}

