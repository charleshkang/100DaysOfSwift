//
//  ViewController.swift
//  TipCalculator
//
//  Created by Charles Kang on 8/12/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var totalTipLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var totalCostLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func textFieldPressed(sender: UITextField)
    {
        costTextField.text = "$0.00"
        costTextField.text = sender.text
    }
    
    @IBAction func sliderButton(sender: UISlider)
    {
        tipPercentLabel.text = String(sender.value)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}