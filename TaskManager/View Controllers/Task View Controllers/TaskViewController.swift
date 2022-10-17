//
//  TaskViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
//

import UIKit

class TaskViewController: UIViewController {
    private enum Segue {
        static let CreateViewController = "CreateViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
            case Segue.CreateViewController:
                guard let destination = segue.destination as? CreateViewController else { return }
            default:
                break
        }
    }
}
