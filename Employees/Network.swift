//
//  Network.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import Foundation


class Network: NetworkProtocol{
    func getData(fromURL: String, handler: @escaping ([Employee]?) -> Void) {
        
        let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
        let request = URLRequest(url: url)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) { data , response , error in
            guard error == nil else {
                handler(nil)
            
                return
            }
            let resultt = try? JSONDecoder().decode(MyResponse.self, from: data!)
            print(resultt?.message ?? "")
            print(resultt?.data?.count ?? 9)
            print("dddaas")
            handler(resultt?.data)
            
        }
        task.resume()
    }
    
    
}
