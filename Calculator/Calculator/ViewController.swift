//
//  ViewController.swift
//  Calculator
//
//  Created by Leon Zhou on 4/6/15.
//  Copyright (c) 2015 Leon Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var isInTheMiddleOfTypingADigit: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if isInTheMiddleOfTypingADigit {
            display.text = display.text! + digit
            
        } else {
            display.text = digit
            isInTheMiddleOfTypingADigit = true
        }
        
    }
    
}

