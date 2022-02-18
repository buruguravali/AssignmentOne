//
//  TaskTwoTests.swift
//  AssignmentOneTests
//
//  Created by Ravali Burugu on 18/02/2022.
//

import XCTest
@testable import AssignmentOne
class TaskTwoTests: XCTestCase {

    func testValidateCredentials()
    {
        let username = "Ravali"
        let password = "12345"
        let expectedResult = true
        
        let credentialsStatus = TaskTwo().validateCredentials(username: username, password: password)
        
        XCTAssertEqual(expectedResult, credentialsStatus)
    }

    func testInValidateCredentials()
    {
        let username = "abcd"
        let password = "123452439405"
        let expectedResult = false
        
        let credentialsStatus = TaskTwo().validateCredentials(username: username, password: password)
        
        XCTAssertEqual(expectedResult, credentialsStatus)
    }

}
