//
//  TableviewController.swift
//  Techie_iOS_UITableview
//
//  Created by Techie262 on 3/9/20.
//  Copyright © 2020 Techie262. All rights reserved.
//

import UIKit
import Foundation

class TableviewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension TableviewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension TableviewController: TableviewContract.view {
    
}
