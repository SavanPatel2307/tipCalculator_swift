//
//  ViewController.swift
//  Week5
//
//  Created by Savan Patel on 2019-09-27.
//  Copyright © 2019 Savan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var totalResaultLabel: UILabel!
    
    @IBOutlet weak var amountBeforeTaxField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    
    var tipCalculator = TipCalculator(amtBeforeTax: 0, tipPercent: 0.10)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tipSliderValueChanged(_ sender: Any) {
        
        tipPercentageLabel.text = String(format:"Tip %02%%", Int(tipPercentageSlider.value))
        //call the calculateTip function
        
    }
    
    //stand alone fuction
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        //come back and call function
        
        updateUI()
    }
    
    func updateUI(){
        totalResaultLabel.text = String(format:"$0.2f", tipCalculator.totalAmount)
    }
    
    
}

