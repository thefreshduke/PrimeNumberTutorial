//
//  ViewController.swift
//  PrimeNumberTutorial
//
//  Created by Scotty Shaw on 10/27/15.
//  Copyright © 2015 ___sks6___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func checkIfNumberIsPrime(sender: AnyObject) {
        let number = Int(textField.text!)
        
        if number <= 1 {
            label.text = "NO"
            return
        }
        
        var isNumberPrime: Bool = true
        
        // O(n)
        for var i: Int = 2; i < number; i++ {
            if number! % i == 0 {
                isNumberPrime = false
                break
            }
        }
        
        if isNumberPrime {
            label.text = "YES"
        }
        else {
            label.text = "NO"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Is this a prime number?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

