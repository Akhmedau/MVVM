//
//  ViewModel.swift
//  MVVM
//
//  Created by АХМЕДОВ НИКОЛАЙ on 12/03/2023.
//  Copyright © 2023 Ahmedov Nikolay. All rights reserved.
//

import Foundation
import UIKit.UIColor

class ViewModel {
//Динамический класс Dynamic занимается биндингом пользовательского интерфейса и модели данных.
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String) {
// [0] потому массив и это первое значение
        if login != User.logins[0].login || password != User.logins[0].passwords {
            statusText.value = "Log in failed."
            statusColor.value = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
    }
}
