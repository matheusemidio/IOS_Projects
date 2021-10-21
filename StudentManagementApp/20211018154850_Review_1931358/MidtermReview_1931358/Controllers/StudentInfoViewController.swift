//
//  StudentInfoViewController.swift
//  MidtermReview_1931358
//
//  Created by english on 2021-10-18.
//

import UIKit

class StudentInfoViewController: UIViewController {

    //Class level
    
    //Can be nil
    public var selectedStudent : Student?
    
    private var editMode : Bool = false
    
    //Declaration of outlets
    @IBOutlet weak var txtNameOutlet: UITextField!
    @IBOutlet weak var btnDeleteOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let student = selectedStudent
        {
            editMode = true
            btnDeleteOutlet.isHidden = false
            txtNameOutlet.text = student.name
        }
        else
        {
            editMode = false
            btnDeleteOutlet.isHidden = true
        }
        
    }
    
    @IBAction func btnAddTouchUp(_ sender: Any)
    {
        guard let studentName : String = txtNameOutlet.text
        else
        {
            print("No name was inputted")
            return
        }
        guard studentName.count >= 3
        else
        {
            print("Name needs to have more than 3 chars.")
            return
        }
        if(editMode == true)
        {
            //Updating a student
            selectedStudent!.name = studentName
            StudentProvider.updateStudent(updatedStudent: selectedStudent!)
            
        }
        else
        {
            let newStudent = Student()
            newStudent.id = Student.getNextId()
            newStudent.name = studentName
            StudentProvider.addNewStudent(student: newStudent)
            
            //Like pressing the back button on the navigation controller

        }

        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func btnDeleteTouchUp(_ sender: Any)
    {
        if(editMode == true)
        {
            StudentProvider.removeStudent(id: selectedStudent!.id)
            navigationController!.popViewController(animated: true)
        }
        
    }
    


}
