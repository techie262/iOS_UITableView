//
//  CellDto.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class CellDto: NSObject {
    var name: String
    var type: TypeCell
    
    init(name: String, type: TypeCell) {
        self.name = name
        self.type = type
    }
}
enum TypeCell: String {
    case one
    case two
}
