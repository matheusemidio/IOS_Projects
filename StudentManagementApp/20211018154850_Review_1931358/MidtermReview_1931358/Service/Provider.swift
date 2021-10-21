//
//  Provider.swift
//  MidtermReview_1931358
//
//  Created by english on 2021-10-18.
//

import Foundation

class StudentProvider {
    
    static var allStudents : [Student] = []
    static func addNewStudent(student : Student)
    {
        allStudents.append(student)
    }
    static func removeStudent(id : Int) -> Bool
    {
        for (index,student) in allStudents.enumerated()
        {
            //Student was found
            if student.id == id
            {
                allStudents.remove(at: index)
                return true
            }
        }
        //No student with provided id
        return false
    }
    
    static func updateStudent(updatedStudent : Student) -> Bool
    {
        for (index,student) in allStudents.enumerated()
        {
            //Student was found
            if student.id == updatedStudent.id
            {
                //Modify the student at that position
                allStudents[index] = updatedStudent
                return true
            }
        }
        //No student with provided id
        return false
    }
}
