//
//  TaskTwo.swift
//  AssignmentOne
//
//  Created by Ravali Burugu on 18/02/2022.
//

import UIKit

enum  CredentialsError : Error {
    case usernameError
    case passwordError
}
class TaskTwo : NSObject {
    
    func validateCredentials(username:String, password:String) throws -> Bool
    {
        if username != "Ravali"
        {
            throw CredentialsError.usernameError
        }
        if password != "12345"
        {
            throw CredentialsError.passwordError
        }
        return true
    }
}
