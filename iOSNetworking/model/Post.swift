//
//  Post.swift
//  iOSNetworking
//
//  Created by user on 14/11/21.
//

import Foundation

struct Employee: Codable {
    let data: [Employe]
}

struct Employe: Codable {
    
    var id: Int
    var employee_name: String
    var employee_salary: Int
    var employee_age: Int
    var profile_image: String
    
}




