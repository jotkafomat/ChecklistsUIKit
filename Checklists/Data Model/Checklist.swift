//
//  Checklist.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 17/08/2021.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
