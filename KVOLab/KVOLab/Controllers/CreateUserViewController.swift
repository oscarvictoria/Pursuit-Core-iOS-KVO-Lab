//
//  ViewController.swift
//  KVOLab
//
//  Created by Oscar Victoria Gonzalez  on 4/7/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class CreateUserViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var balanceTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }
    

    private func configureTextFields() {
        userNameTextField.delegate = self
        balanceTextField.delegate = self
    }

    @IBAction func balanceTextField(_ sender: UIButton) {
        
    }
    
    
}

extension CreateUserViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.resignFirstResponder()
        balanceTextField.resignFirstResponder()
        return true
    }
}
