//
//  Student.swift
//  ManagementStudent
//
//  Created by Hien on 5/10/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import Foundation
class Student {
private var Name : String
private var University : String
private var Description : String
private var Age : Int

init(name : String, university: String, description: String, age: Int) {
    Name = name
    University = university
    Description = description
    Age = age
}

func getName() -> String{
    return Name
}

func setName(name: String){
    Name = name
}

func getUniversity() -> String{
    return University
}

func setUniversity(university: String){
    University = university
}

func getDescription() -> String{
    return Description
}

func setDescription(description: String){
    Description = description
}

func getAge() -> Int{
    return Age
}

func setAge(age: Int){
    Age = age
}
}
class NewStudent {
    static var isLoadData = false;
    static var student: Student!
}


