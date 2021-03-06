//
//  TableviewContract.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class TableviewContract: NSObject {
    typealias view = _TableView
    typealias presenter = _TablePresenter
    typealias model = _TableModel
}

protocol _TableView {
    func reloadData()
}

protocol _TablePresenter {
    func getData() -> [CellDto]
}

protocol _TableModel {
    func getData() -> [CellDto]
}

