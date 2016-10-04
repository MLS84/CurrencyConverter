//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Megan Mitchell on 9/27/16.
//  Copyright © 2016 MeganMitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
   
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

  
    @IBAction func convertCurrency(_ sender: UIButton){
        if let amount = Double(inputTextField.text!){
            dollarAmount = amount
        }
        poundLabel.text = "£ \(dollarAmount * poundRate)"
        yenLabel.text = "¥ \(dollarAmount * yenRate)"
        euroLabel.text = "€ \(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
   }
 
    // Called when 'return' key is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func clear(_ sender: AnyObject) {
        inputTextField.text = ""
        poundLabel.text = "£ 0.00"
        yenLabel.text = "¥ 0.00"
        euroLabel.text = "€ 0.00"
    }
    // Clear button reverts to "0" when clicked.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// comment 

