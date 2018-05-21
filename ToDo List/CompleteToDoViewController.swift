//
//  CompleteToDoViewController.swift
//  ToDo List
//
//  Created by Lamin Tamba on 20/05/2018.
//  Copyright © 2018 Lamin Tamba. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    var selectedToDo : ToDoCoreData?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        if let context =  (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let theToDo = selectedToDo {
                context.delete(theToDo)
                navigationController?.popViewController(animated: true)
            }
            
        
        }
        
        /*
        var i = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: i)
                previousVC.tableView.reloadData()
                 navigationController?.popViewController(animated: true)
                break
            }
            i += 1
        }
        */
    }
    
}
