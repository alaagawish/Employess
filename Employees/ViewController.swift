//
//  ViewController.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 

    @IBOutlet weak var myTable: UITableView!
    var network: NetworkProtocol!
    var employees: [Employee] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        network = Network()
        network.getData(fromURL: "") { [weak self] result in
            DispatchQueue.main.async {
                self?.employees = result ?? []
                print("dsss")
                print(self?.employees.count ?? 0)
                self?.myTable.reloadData()
            }
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.employeeName.text = employees[indexPath.row].employee_name
        return cell
        
    }


}

