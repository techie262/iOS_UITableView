//
//  TableViewController.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private var presenter: TableviewContract.presenter = TableviewPresenter(model: TableviewModel())
    private var dataDisplay: [CellDto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        dataDisplay = self.presenter.getData()
    }
    
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataCell = dataDisplay[indexPath.row]
        switch dataCell.type {
        case .one:
            if let cell = getCellForRow(indexPath: indexPath) {
                return cell
            }
        case .two:
            if let cell = getCellForRow(indexPath: indexPath) {
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func getCellForRow(indexPath: IndexPath) -> CustomizeTableViewCell? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomizeTableViewCell", for: indexPath) as? CustomizeTableViewCell
        return cell
    }
}

extension TableViewController: TableviewContract.view {
    func reloadData() {
        
    }
}
