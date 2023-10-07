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
            secondName: "Einstein",
            pictue: "Albert",
            biography: """
                        Альберт Эйнштейн (14 марта 1879 — 18 апреля 1955) — американский, немецкий и швейцарский физик-теоретик, философ науки и общественный деятель-гуманист, один из основателей современной теоретической физики.
                        Лауреат Нобелевской премии по физике 1921 года. Его теория относительности изменила основания физики, заменив классическую механику и закон всемирного тяготения Ньютона
                        """
        
        )
    }
}
