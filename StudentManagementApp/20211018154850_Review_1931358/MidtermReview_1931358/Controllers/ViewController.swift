//
//  ViewController.swift
//  MidtermReview_1931358
//
//  Created by english on 2021-10-18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNameOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoginTouchUp(_ sender: Any)
    {
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(identifier == Segue.toStudentList)
        {
            guard let name : String = txtNameOutlet.text
            else
            {
                print("Please, enter an input.")
                return false
            }
            if name.count < 3
            {
                print("Please, enter an input with more than 3 characters")
                return false
            }
            return true
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == Segue.toStudentList)
        {
            let studentListViewController = (segue.destination as! StudentListViewController)
            //Go to StudentListViewController and prepare it to receive the data
            //Send the username to StudentListViewController
            studentListViewController.username = txtNameOutlet.text!
            
            
            
            
        }
    }
    
}

