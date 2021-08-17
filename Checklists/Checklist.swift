//
//  Checklist.swift
//  Checklists
//
//  Created by Krzysztof Jankowski on 17/08/2021.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
