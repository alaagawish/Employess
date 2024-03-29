//
//  EmployeesTests.swift
//  EmployeesTests
//
//  Created by Alaa on 21/05/2023.
//

import XCTest
@testable import Employees

final class EmployeesTests: XCTestCase {
    var network: NetworkProtocol?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        network = Network()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        network = nil
    }
    
    func testGetData(){
        let myExpection = expectation(description: "data")
        network?.getData(fromURL: "", handler: { result in
            if result != nil{
                XCTAssertTrue(true)
                print("done")
                myExpection.fulfill()
            } else{
                XCTFail()
                return
            }
           
        })
        
        waitForExpectations(timeout: 10)
    }

     

}
