//
//  ViewController.swift
//  INT_1931358
//
//  Created by english on 2021-09-30.
//

import UIKit

class ViewController: UIViewController {
    
    //Declaration of outlets
    @IBOutlet weak var txtEmailOutlet: UITextField!
    @IBOutlet weak var txtPasswordOutlet: UITextField!
    
    @IBAction func txtEmailEditChanged(_ sender: Any)
    {
        txtEmailOutlet.backgroundColor = UIColor.white
    }
    
    @IBAction func txtPasswordEditChanged(_ sender: Any)
    {
        txtPasswordOutlet.backgroundColor = UIColor.white
    }
    
    @IBAction func btnLoginTouchUp(_ sender: Any)
    {
        
    }
    
    func validateInput(txtInputOutlet : UITextField!) -> Bool {
        //Validating input
        guard let txtInput : String = txtInputOutlet.text
        else
        {
            return false
        }
        if (txtInput.count == 0)
        {
            txtInputOutlet.backgroundColor = UIColor.red
            return false
        }
        return true
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        //Validation of segue
        if identifier == "toEventsView"
        {
            //Validating email input
            guard validateInput(txtInputOutlet: txtEmailOutlet)
            else
            {
                return false
            }
            //Validating password input
            guard validateInput(txtInputOutlet: txtPasswordOutlet)
            else
            {
                return false
            }
        }
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toEventsView")
        {
            //Creating a variable to point to events view controller
            let navigationViewController = segue.destination as! UINavigationController
            
            let eventsViewController = navigationViewController.viewControllers.first as! EventsViewController
            
            //let eventsViewController = segue.destination as! EventsViewController
            guard let txtEmail = txtEmailOutlet.text
            else {
                return
            }
            guard let txtPassword = txtPasswordOutlet.text
            else
            {
                return
            }
            eventsViewController.emailData = txtEmail
            eventsViewController.passwordData = txtPassword
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

