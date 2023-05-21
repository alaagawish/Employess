//
//  MockNetworkTests.swift
//  EmployeesTests
//
//  Created by Alaa on 21/05/2023.
//

import XCTest
@testable import Employees
final class MockNetworkTests: XCTestCase {

    var network: NetworkProtocol!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        network = FakeNetwork(success: true )
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        network = nil
    }


    func testGetDataFun(){
        
        network.getData(fromURL: "") { result in
            if result != nil{
                XCTAssertTrue(true)
                print("done")
                
            } else{
                XCTFail()
                return
            }
           
        }
        }
    }


