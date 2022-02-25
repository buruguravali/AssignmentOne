//
//  TaskOneTests.swift
//  AssignmentOneTests
//
//  Created by Ravali Burugu on 18/02/2022.
//

import XCTest
@testable import AssignmentOne
class TaskOneTests: XCTestCase {

    func testSumFunction()
    {
        let list = [1,2,3,4]
        
        let expectedSum = 10
        
        let sum = TaskOne().getSum(list: list)
        XCTAssertEqual(expectedSum, sum)
    }
}
