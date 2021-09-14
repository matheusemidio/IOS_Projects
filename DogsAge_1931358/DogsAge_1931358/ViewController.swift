//
//  ViewController.swift
//  DogsAge_1931358
//
//  Created by english on 2021-09-09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtResult.text = ""
    }

    
    @IBOutlet weak var txtAgeInput: UITextField!
    
    @IBOutlet weak var txtResult: UILabel!
    
    @IBAction func btnCalculate(_ sender: Any) {
        var humanAge = 0
        let dogAge = Int(txtAgeInput.text!)!
        switch dogAge
        {
        case 1:
            humanAge = 15
        case 2:
            humanAge = 24
        case 3:
            humanAge = 28
        case 4:
            humanAge = 32
        case 5:
            humanAge = 36
        case 6:
            humanAge = 40
        case 7:
            humanAge = 44
        case 8:
            humanAge = 48
        case 9:
            humanAge = 52
        case 10:
            humanAge = 56
        case 11:
            humanAge = 60
        case 12:
            humanAge = 64
        case 13:
            humanAge = 68
        case 14:
            humanAge = 72
        case 15:
            humanAge = 76
        case 16:
            humanAge = 80
        default:
            humanAge = 0
            
        }
        
        txtResult.text = "If your \(dogAge) years old dog were a human, he/she would have \(humanAge) years old"
        txtResult.isHidden = false
        txtAgeInput.text = ""
    }
    
}

