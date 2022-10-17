//
//  HomeViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
//

import UIKit

class HomeViewController: UIViewController {
    private enum Segue {
        static let TaskViewController = "TaskViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
            case Segue.TaskViewController:
                guard let destination = segue.destination as? TaskViewController else { return }
            default:
                break
        }
    }
}
