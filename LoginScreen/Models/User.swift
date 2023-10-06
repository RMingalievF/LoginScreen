//
//  User.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 05.10.2023.
//

struct User {
    let login: String
    let password: String
    let userInformation: UserInformation
    
    static func receiveUserData() -> User {
        User(
            login: "Ruslan",
            password: "1234",
            userInformation: UserInformation.receiveUserInformation())
    }
}


struct UserInformation {
    let firsName: String
    let secondName: String
    let pictue: String
    let biography: String
    
    
    var fullName: String {
        "\(firsName) \(secondName)"
    }
    
    static func receiveUserInformation() -> UserInformation {
        UserInformation(
            firsName: "Albert",
            secondName: "Enshtain",
            pictue: "String",
            biography: "bla bla bla"
        
        )
    }
}
