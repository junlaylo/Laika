//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Jacky Poon on 2014-10-08.
//  Copyright (c) 2014 jacsdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        ageTextField.resignFirstResponder()
        // create a constant
        let humanYears = ageTextField.text
        let humanYearsInt : Int = (humanYears.toInt())!
        
        let puppyConversionRate : Double = 10.5
        let dogConversionRate : Double = 4
        
        
        var dogYears : Double
        if (humanYearsInt <= 2)
        {
            dogYears = Double(humanYearsInt) * puppyConversionRate
        }
        else
        {
            dogYears = Double(puppyConversionRate * 2.0) + Double(humanYearsInt - 2) * 4.0
        }
        resultLabel.text = "\(humanYearsInt)" + " human years is " + "\(dogYears)" + " dog years"
        ageTextField.text = ""
        resultLabel.hidden = false
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

