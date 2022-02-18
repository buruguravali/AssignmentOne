//
//  TaskOne.swift
//  AssignmentOne
//
//  Created by Ravali Burugu on 18/02/2022.
//

import UIKit

public class TaskOne {
    public func getSum(list : Array<Int>) -> Int
    {
        var sum: Int = 0
        for item in list
        {
            sum = sum + item
        }
        return sum
    }
}
