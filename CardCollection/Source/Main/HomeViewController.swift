//
//  HomeViewController.swift
//  CardCollection
//
//  Created by Alan O'Connor on 24/01/2020.
//  Copyright © 2020 hammyassassin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showCardPressed(_ sender: Any) {
        let cardViewController = CardViewController()
        self.navigationController?.show(cardViewController, sender: self)
    }
}
