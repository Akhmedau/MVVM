//
//  Dynamic.swift
//  MVVM
//
//  Created by АХМЕДОВ НИКОЛАЙ on 12/03/2023.
//  Copyright © 2023 Ahmedov Nikolay. All rights reserved.
//

import Foundation

//С помощью этого класса происходит связывания объекта( StatusText с пользовательским интерфейсом и изменениями данных) Как только происходит изменение данной переменной, переменная отправляется во ViewController и там проиходит вызов метода, который обновляет внешний вид.
// В Dynamic передаётся аргумент, это дженерик <T>
class Dynamic<T> {
// Это замыкание и создаём своё имя объекту Listener
    typealias Listener = (T) -> Void
    private var listener: Listener?
// Функиця, которая получает на вход объект listener и обновляет значение глобальной переменной на новое.
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
// Это значение будет каждый раз устанавливаться, как будет проиходить изменение. 
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
