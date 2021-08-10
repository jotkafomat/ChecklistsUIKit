//
//  ChecklistViewController.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 10/08/2021.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    
    // MARK: - Table View Data Source
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 5
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        return cell
    }

}

