//
//  FakeNetwork.swift
//  EmployeesTests
//
//  Created by Alaa on 21/05/2023.
//

import Foundation
@testable import Employees

class FakeNetwork: NetworkProtocol{
   
    
    var success: Bool
    var employees: [Employee] = []
  
    init(success: Bool) {
        self.success = success
        employees.append(Employee(id: 1, employee_name: "alaa", employee_salary: 1000000, employee_age: 23, profile_image: ""))
    }
    
    func getData(fromURL: String, handler: @escaping ([Employees.Employee]?) -> Void) {
        if success{
            handler(employees)
        }else{
            handler(nil)
        }
    }
    
    
}

