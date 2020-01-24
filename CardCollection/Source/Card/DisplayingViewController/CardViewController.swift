//
//  HomeViewController.swift
//  CardViewController
//
//  Created by Al O'Connor on 14/12/2019.
//  Copyright © 2019 Al O'Connor. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    private var viewModels: [CardViewModel] = {
        return CardModelFactory.generateRandomViewModels(5, with: 5)
    }()

    /// Table Container is used for a shadow.
    @IBOutlet weak var tableContainer: UIView! {
        didSet {
            tableContainer.layer.masksToBounds = false
        }
    }
    
    @IBOutlet weak var tableView: FixedHeightTableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self

            tableView.register(UINib(nibName: "CollectionTableCell", bundle: nil), forCellReuseIdentifier: "collectionCell")
            tableView.layer.masksToBounds = false
            tableView.backgroundColor = .clear
            tableView.allowsSelection = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CardViewController"
    }
}

extension CardViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModels.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "collectionCell", for: indexPath) as? CollectionTableCell else {
            return UITableViewCell()
        }
        cell.updateWith(viewModel: viewModels[indexPath.section])
        return cell
    }
}
