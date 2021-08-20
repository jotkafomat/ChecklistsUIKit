//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 11/08/2021.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
    
    override init() {
        super.init()
        itemID = DataModel.nextChecklistItemID()
    }
}
