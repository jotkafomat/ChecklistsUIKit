//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 11/08/2021.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
//    Mark:- TableView Delegates
    
    override func tableView(
        _ tableView: UITableView,
        willSelectRowAt indexPath: IndexPath
    ) -> IndexPath? {
        return nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
//    MARK:- Actions
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
        print(textField.text!)
        navigationController?.popViewController(animated: true)
    }

//    MARK:- Outlets
    @IBOutlet weak var textField: UITextField!
    
}
