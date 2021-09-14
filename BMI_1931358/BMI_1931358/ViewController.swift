//
//  ViewController.swift
//  BMI_1931358
//
//  Created by english on 2021-09-11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblDisplay: UILabel!
    
    func calculateBMI(height : Double, weight : Double) -> String {
        let heightMeters : Double = height/100
        let BMI : Double = weight / (heightMeters * heightMeters)
        
        switch BMI {
        case ...10.5:
            return "Underweight"
        case 18.5..<25:
            return "Normal weight"
        case 25..<30:
            return  "Overweight"
        case 30...100:
            return "Obesity"
        default:
            return "Error"
        }
        
        
    }
    func modifyLabelColor(bmi : String) -> Void {
        switch bmi {
        case "Underweight":
            lblDisplay.backgroundColor = UIColor.blue
        case "Normal weight":
            lblDisplay.backgroundColor = UIColor.green
        case "Overweight":
            lblDisplay.backgroundColor = UIColor.yellow
            
        case "Obesity":
            lblDisplay.backgroundColor = UIColor.orange
        default:
            lblDisplay.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func btnCalculateBMI(_ sender: Any) {
        let heightCentimetersInput = Double(txtHeight.text!)!
        let weightKilosInput = Double(txtWeight.text!)!
        let bmiResult = calculateBMI(height : heightCentimetersInput, weight : weightKilosInput)
        modifyLabelColor(bmi: bmiResult)
        lblDisplay.text = bmiResult
        lblDisplay.isHidden = false
        
        txtHeight.text = ""
        txtWeight.text = ""
        
    }
    
    
    @IBAction func txtHeightClicked(_ sender: Any) {
        lblDisplay.isHidden = true
    }
    
    
    @IBAction func txtWeightClicked(_ sender: Any) {
        lblDisplay.isHidden = true
    }
}

