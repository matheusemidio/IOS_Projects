//
//  StudentListViewController.swift
//  MidtermReview_1931358
//
//  Created by english on 2021-10-18.
//

import UIKit

class StudentListViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    //Class level variables
    public var username : String = ""
    private var selectedRow : Int = 0
    
    //Declarations of outlets
    @IBOutlet weak var txtUsernameOutlet: UILabel!
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUsernameOutlet.text = "Hello \(username)"
        
        //Remember to add the methods to emphasize that the implementation is here
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

//        StudentProvider.addNewStudent(student: Student(id: 1, name: "Daniel"))
//        StudentProvider.addNewStudent(student: Student(id: 1, name: "Andres"))
//        StudentProvider.addNewStudent(student: Student(id: 1, name: "Camilo"))
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return StudentProvider.allStudents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Its creating 10 and it shows the next ones when I scroll
        //Give the name of the prototype cell you gave
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = StudentProvider.allStudents[indexPath.row].name
        return cell
    }
    
    
    @IBAction func btnRefreshTouchUp(_ sender: Any)
    {
        tableViewOutlet.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //This method is dispached when the user clicks/selects a row
        self.selectedRow = indexPath.row
        
        //Call a segue to open StudentInfoViewController in editMode
        performSegue(withIdentifier: Segue.toStudentInfoEditing, sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == Segue.toStudentInfoEditing)
        {
            let toStudentInfoViewController = (segue.destination as! StudentInfoViewController)
            
            //We will send the object student (selected)
            toStudentInfoViewController.selectedStudent = StudentProvider.allStudents[selectedRow]
            
            
        }
    }

}
