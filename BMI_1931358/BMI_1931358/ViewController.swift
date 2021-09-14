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
        btnCalculate.layer.cornerRadius = 15
        
    }

    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblDisplay: UILabel!
    
    @IBOutlet weak var btnCalculate: UIButton!
    
    
    
    func calculateBMI(height : Double, weight : Double) -> String {
        let heightMeters : Double = height/100
        let BMI : Double = weight / (heightMeters * heightMeters)
        print(BMI)
        switch BMI {
        case 0...18.5:
            return "Underweight"
        case 18.5..<25:
            return "Normal weight"
        case 25..<30:
            return  "Overweight"
        case 30...Double.greatestFiniteMagnitude:
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
        
        //Validating height
        if let heightCentimetersInput : Double = Double(txtHeight.text!)
        {
            if heightCentimetersInput >= 80 && heightCentimetersInput <= 250
            {
                //Validating weight
                if let weightKilosInput : Double = Double(txtWeight.text!)
                {
                    if weightKilosInput >= 30 && weightKilosInput <= 300
                    {
                        let bmiResult = calculateBMI(height : heightCentimetersInput, weight : weightKilosInput)
                        modifyLabelColor(bmi: bmiResult)
                        lblDisplay.text = "BMI Classification: \(bmiResult)"
                        lblDisplay.isHidden = false
                    }
                    else
                    {
                        Toast.ok(view: self, title: "Error", message: "", handler: nil)                }
                }
                else
                {
                    
                    Toast.ok(view: self, title: "Review the weight", message: "Enter a weight between 30kg and 300kg.", handler: nil)
                    
                }
                
            }
            else
            {
                Toast.ok(view: self, title: "Review the height", message: "Enter a height between 80cm and 250cm.", handler: nil)            }
            
            
        }
        else
        {
            Toast.ok(view: self, title: "Error", message: "Wrong height input. Please, type a correct height", handler: nil)
        }
        
    }
    
    @IBAction func txtHeightClicked(_ sender: Any)
    {
        lblDisplay.isHidden = true
    }
    
   
    @IBAction func txtWeightClicked(_ sender: Any)
    {
        lblDisplay.isHidden = true
    }
}

