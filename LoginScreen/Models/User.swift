//
//  User.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 05.10.2023.
//

struct User {
    let login: String
    let password: String
}


struct UserInformation {
    let firsName: String
    let secondName: String
    let gender: String
    let pictue: String
    
    var fullName: String {
        "\(firsName) \(secondName)"
    }
}
