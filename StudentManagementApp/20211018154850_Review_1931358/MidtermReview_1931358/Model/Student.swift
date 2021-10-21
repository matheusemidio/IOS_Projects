//
//  Student.swift
//  MidtermReview_1931358
//
//  Created by english on 2021-10-18.
//

import Foundation


class Student {

    //Class variable
    static private var idGenerator : Int = 0
    
    public var id : Int = 0
    public var name : String = ""
    
    //You can generate the constructor automatically by right clicking the class name and
    //then click refactor -> generate memberlaze initializer
    init(id: Int = 0, name: String = "") {
        self.id = id
        self.name = name
    }
    
    static func getNextId() -> Int
    {
        Student.idGenerator += 1
        return idGenerator
    }
    
}
