//
//  NetworkProtocol.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import Foundation

protocol NetworkProtocol{
    
    func getData(fromURL: String, handler: @escaping ([Employee]?) -> Void)
}
