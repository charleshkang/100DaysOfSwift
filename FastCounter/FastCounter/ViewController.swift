//
//  ViewController.swift
//  FastCounter
//
//  Created by Charles Kang on 8/12/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var holdButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress))
        holdButton.addGestureRecognizer(longGesture)
    }
    
    func longPress()
    {
        counter += 1
        counterLabel.text = String(counter)
        print(counter)
    }
    
    @IBAction func resetCounterButton(sender: AnyObject)
    {
        counter = 0
        counterLabel.text = "0"
    }
}