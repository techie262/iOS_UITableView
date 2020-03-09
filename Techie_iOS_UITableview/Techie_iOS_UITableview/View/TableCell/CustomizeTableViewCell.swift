//
//  CustomizeTableViewCell.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class CustomizeTableViewCell: UITableViewCell {

    @IBOutlet private weak var cellNameLabel: UILabel!
    var data: CellDto? {
        didSet {
            if let data = data {
                cellNameLabel?.text = data.name
                if data.type == TypeCell.two {
                    cellNameLabel?.tintColor = UIColor.init(hexString: "#4D8BFF", alpha: 1)
                    self.backgroundColor = UIColor.yellow
                } else {
                    cellNameLabel?.tintColor = UIColor.black
                    self.backgroundColor = UIColor.clear
                }
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
