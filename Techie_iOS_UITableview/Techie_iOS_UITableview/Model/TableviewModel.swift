//
//  TableviewModel.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class TableviewModel: TableviewContract.model {
    var dataDisplay: [CellDto] = []
    
    func getData() -> [CellDto] {
        var listData: [CellDto] = []
        for item in 1...16 {
            let cellDto = CellDto(name: "#cell \(item)", type: checkEvenNumberOrOddNumber(number: item) == .even ? .two : .one)
            listData.append(cellDto)
        }
        return listData
    }
    
    func checkEvenNumberOrOddNumber(number: Int) -> TypeNumber {
        if number % 2 == 0 {
            return .even
        } else {
            return .odd
        }
    }
}

enum TypeNumber: String {
    case even
    case odd
}
