//
//  ViewController.swift
//  SimpleCounter
//
//  Created by Charles Kang on 8/12/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var counterLabel: UILabel!
    var currentValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func incrementCounterTouchUpButton(sender: UIButton)
    {
        currentValue += 1
        
        counterLabel.text = String(currentValue)
    }
    
    @IBAction func resetCounterTouchUpButton(sender: UIButton)
    {
        currentValue = 0
        counterLabel.text = String(currentValue)
    }
}

