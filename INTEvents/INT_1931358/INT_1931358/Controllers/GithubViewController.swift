//
//  GithubViewController.swift
//  INT_1931358
//
//  Created by english on 2021-09-30.
//

import UIKit

class GithubViewController: UIViewController {
    
    //Declaration of class variables
    public var emailData : String = ""
    
    //Declaration of outlets
    
    @IBOutlet weak var lblEmailOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmailOutlet.text = emailData
        // Do any additional setup after loading the view.
    }
    



}
