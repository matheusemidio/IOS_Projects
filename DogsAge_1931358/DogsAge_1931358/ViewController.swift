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
    }

    
    @IBOutlet weak var txtAgeInput: UITextField!
    
    @IBOutlet weak var txtResult: UILabel!
    
    @IBAction func btnCalculate(_ sender: Any) {
        let humanAge = 0
        if txtAgeInput.text != nil {
            humanAge = Int(txtAgeInput.text!);
        }
        
        var dogAge = 0;
        
        switch humanAge{
        case 0...15:
            dogAge = 1
        case 16...24:
            dogAge = 2
        case 25...28:
            dogAge = 3
        case 29...32:
            dogAge = 4
        case 33...36:
            dogAge = 5
        case 37...40:
            dogAge = 7
        case 41...48:
            dogAge = 8
        case 49...52:
            dogAge = 9
        case 53...56:
            dogAge = 10
        case 57...60:
            dogAge = 11
        case 61...64:
            dogAge = 12
        case 65...68:
            dogAge = 13
        case 69...72:
            dogAge = 14
        case 73...76:
            dogAge = 15
        case 77...:
            dogAge = 16
        default:
            dogAge = 0
            
        }
    }
    
}

