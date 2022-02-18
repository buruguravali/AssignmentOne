//
//  TaskTwo.swift
//  AssignmentOne
//
//  Created by Ravali Burugu on 18/02/2022.
//

import UIKit

class TaskTwo : NSObject {
    enum  PasswordError : Error {
        case number
    }
    
    func validateCredentials(username:String, password:String) throws -> Bool
    {
        if username == "Ravali"
        {
            return true
        }
        if password == "12345"
        {
            throw PasswordError.number
        }
        return true
    }
}
