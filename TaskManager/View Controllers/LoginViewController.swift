//
//  ViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
// https://samsonc89.github.io/library/
//

import UIKit

class LoginViewController: UIViewController {
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSetup()
    }

    private func viewSetup() {
        
    }
}

