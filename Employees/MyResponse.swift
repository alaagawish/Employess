//
//  MyResponse.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import Foundation
struct MyResponse: Decodable{
    let status: String?
    let data: [Employee]?
    let message: String?
}
