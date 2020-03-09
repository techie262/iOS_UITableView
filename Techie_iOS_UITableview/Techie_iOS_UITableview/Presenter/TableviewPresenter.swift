//
//  TableviewPresenter.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class TableviewPresenter: TableviewContract.presenter {
    private var model: TableviewContract.model
    
    required init(model: TableviewContract.model) {
        self.model = model
    }
    
    func getData() -> [CellDto] {
        return model.getData()
    }
}
