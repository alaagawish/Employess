//
//  Employee.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import Foundation


struct Employee: Decodable{
    let id: Int
    let employee_name: String
    let employee_salary: Double
    let employee_age: Int
    let profile_image: String?
}
