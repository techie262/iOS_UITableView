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
    let nibNameCell: String = "CustomizeTableViewCell"
    let identifierCell: String = "CustomizeTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        dataDisplay = self.presenter.getData()
        tableView?.register(UINib(nibName: nibNameCell, bundle: nil), forCellReuseIdentifier: identifierCell)
    }
    
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataCell = dataDisplay[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: identifierCell) as! CustomizeTableViewCell
        cell.data = dataCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let dataCell = dataDisplay[indexPath.row]
        switch dataCell.type {
        case .one:
            return 100
        case .two:
            return 60
        }
    }
    
}

extension TableViewController: TableviewContract.view {
    func reloadData() {
        
    }
}
