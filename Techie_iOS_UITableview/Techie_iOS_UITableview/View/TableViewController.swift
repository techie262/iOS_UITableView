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
        tableView?.register(UINib(nibName: "CustomizeTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomizeTableViewCell")
    }
    
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dataCell = dataDisplay[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomizeTableViewCell") as! CustomizeTableViewCell
        cell.data = dataCell
        return cell
    }
}

extension TableViewController: TableviewContract.view {
    func reloadData() {
        
    }
}
