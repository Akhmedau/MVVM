//
//  User.swift
//  MVVM
//
//  Created by АХМЕДОВ НИКОЛАЙ on 12/03/2023.
//  Copyright © 2023 Ahmedov Nikolay. All rights reserved.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var logins = [
        User(login: "lexone", passwords: "12345")
    ]
}
