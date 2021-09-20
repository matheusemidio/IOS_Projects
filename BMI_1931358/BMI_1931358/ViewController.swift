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

    @IBOutlet weak var theme: UISegmentedControl!
    
    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var lblDisplay: UILabel!
    
    @IBOutlet weak var btnCalculate: UIButton!
    
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var lblHeight: UILabel!
    
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBAction func changeTheme(_ sender: Any) {
        if theme.titleForSegment(at: theme.selectedSegmentIndex) == "White"
        {
            background.backgroundColor = UIColor.white
            lblHeight.textColor = UIColor.black
            lblWeight.textColor = UIColor.black
            txtHeight.backgroundColor = UIColor.white
            txtWeight.backgroundColor = UIColor.white        }
        if theme.titleForSegment(at: theme.selectedSegmentIndex) == "Dark"
        {
            background.backgroundColor = UIColor.black
            lblHeight.textColor = UIColor.white
            lblWeight.textColor = UIColor.white
            txtHeight.backgroundColor = UIColor.white
            txtWeight.backgroundColor = UIColor.white
            theme.tintColor = UIColor.red
            
            
            
        }
        
    }
    
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
        guard let heightCentimetersInput : Double = Double(txtHeight.text!), heightCentimetersInput >= 80 && heightCentimetersInput <= 250 else
        {
            
            Toast.ok(view: self, title: "Review the height", message: "Enter a height between 80cm and 250cm.", handler: nil)
            return
        }
        
        guard let weightKilosInput : Double = Double(txtWeight.text!), weightKilosInput >= 30 && weightKilosInput <= 300 else
        {
            Toast.ok(view: self, title: "Review the weight", message: "Enter a weight between 30kg and 300kg.", handler: nil)
            return
            
        }
        let bmiResult = calculateBMI(height : heightCentimetersInput, weight : weightKilosInput)
        modifyLabelColor(bmi: bmiResult)
        lblDisplay.text = "BMI Classification: \(bmiResult)"
        lblDisplay.isHidden = false
        
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

