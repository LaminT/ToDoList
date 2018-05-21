//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Lamin Tamba on 18/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let unrappedTitleText = titleTextField.text {
            toDo.name = unrappedTitleText
            toDo.important = importantSwitch.isOn
            
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
