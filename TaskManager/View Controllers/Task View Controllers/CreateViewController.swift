//
//  CreateViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
//

import UIKit

class CreateViewController: UIViewController {
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var newTaskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTaskButton(_ sender: UIButton) {
        print("add task pressed")
    }
}
