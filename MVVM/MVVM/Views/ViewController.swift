//
//  ViewController.swift
//  MVVM
//
//  Created by АХМЕДОВ НИКОЛАЙ on 12/03/2023.
//  Copyright © 2023 Ahmedov Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passField: UITextField!
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: passField.text ?? "")
    }
    @IBOutlet var label: UILabel!
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bind({(statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}

