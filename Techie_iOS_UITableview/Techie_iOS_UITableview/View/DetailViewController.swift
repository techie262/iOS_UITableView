//
//  DetailViewController.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet private weak var dismissButton: UIButton!
    @IBOutlet private weak var cellName: UILabel!
    var data: CellDto? {
        didSet {
            if let data = data {
                cellName?.text = data.name
                self.title = "Detail \(data.name)"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func invokeDissmissViewController(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
