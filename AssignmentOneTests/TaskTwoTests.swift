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
        
        let credentialsStatus = try? TaskTwo().validateCredentials(username: username, password: password)
        
        XCTAssertEqual(expectedResult, credentialsStatus)
    }
    
    func testInValiPasswordCredentials()
    {
        let username = "Ravali"
        let password = "123452439405"
        
        XCTAssertThrowsError(try TaskTwo().validateCredentials(username: username, password: password) ) { error in
            XCTAssertEqual(error as! CredentialsError, CredentialsError.passwordError)
        }
    }
    
    func testInValidUsernameCredentials()
    {
        let username = "test"
        let password = "12345"
        
        XCTAssertThrowsError(try TaskTwo().validateCredentials(username: username, password: password) ) { error in
            XCTAssertEqual(error as! CredentialsError, CredentialsError.usernameError)
        }
    }
    
}
