//
//  AllListsTableViewController.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 17/08/2021.
//

import UIKit

class AllListsTableViewController: UITableViewController {
    
    let cellIdentifier = "ChecklistCell"
    
    var lists = [Checklist]()
    
    override func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Add placeholder data
        var list = Checklist(name: "Birthdays")
        lists.append(list)
        
        list = Checklist(name: "Groceries")
        lists.append(list)
        
        list = Checklist(name: "Cool Apps")
        lists.append(list)
        
        list = Checklist(name: "To Do")
        lists.append(list)
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let checklist = lists[indexPath.row]
        
        cell.textLabel!.text = checklist.name
        cell.accessoryType = .detailDisclosureButton
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowChecklist", sender: nil)
    }
    
    
    
}
