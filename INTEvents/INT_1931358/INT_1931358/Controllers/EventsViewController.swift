//
//  EventsViewController.swift
//  INT_1931358
//
//  Created by english on 2021-09-30.
//

import UIKit

class EventsViewController: UIViewController {
    
    //Declaration of class variables
    public var emailData : String = ""
    public var passwordData : String = ""
    
    //Declaration of outlets
    @IBOutlet weak var lblEmailOutlet: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblEmailOutlet.text = emailData
    }
    

    @IBAction func btnGithubTouchUp(_ sender: Any) {
    }
    
    @IBAction func btnTDDTouchUp(_ sender: Any) {
    }
    
    @IBAction func btnContestTouchUp(_ sender: Any) {
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier == "toGithubView")
        {
            return true
        }
        else if(identifier == "toTDDView")
        {
            return true
        }
        else if(identifier == "toContestView")
        {
            return true
        }
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toGithubView")
        {
            //Creating a variable to point to events view controller
            //let navigationViewController = segue.destination as! UINavigationController
            
            //let githubViewController = navigationViewController.viewControllers.first as! GithubViewController
            
            let githubViewController = segue.destination as! GithubViewController
            
            githubViewController.emailData = emailData
            
        }
        else if (segue.identifier == "toTDDView")
        {
            //Creating a variable to point to events view controller
            //let navigationViewController = segue.destination as! UINavigationController
            
            //let githubViewController = navigationViewController.viewControllers.first as! GithubViewController
            
            let tddViewController = segue.destination as! TDDViewController
            
            tddViewController.emailData = emailData
            
        }
        if (segue.identifier == "toContestView")
        {
            //Creating a variable to point to events view controller
            //let navigationViewController = segue.destination as! UINavigationController
            
            //let githubViewController = navigationViewController.viewControllers.first as! GithubViewController
            
            let contestViewController = segue.destination as! ContestViewController
            
            contestViewController.emailData = emailData
            
        }
    }
}
