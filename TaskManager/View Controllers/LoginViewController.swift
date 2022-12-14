//
//  ViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
// https://samsonc89.github.io/library/
//

import UIKit

class LoginViewController: UIViewController {
    private enum Segue {
        static let HomeViewController = "HomeViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
            case Segue.HomeViewController:
                guard let destination = segue.destination as? HomeViewController else { return }
            default:
                break
        }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
}

