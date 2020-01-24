//
//  ItemCell.swift
//  CardViewController
//
//  Created by Al O'Connor on 15/12/2019.
//  Copyright © 2019 Al O'Connor. All rights reserved.
//

import UIKit

class ItemCell: CardItemCell {

    @IBOutlet weak var containerView: UIView!

    @IBOutlet weak var label: UILabel!

    private var viewModel: ItemCellViewModel?
}

extension ItemCell: Cell {
    func updateWith(viewModel: ViewModel?) {
        guard let viewModel = viewModel as? ItemCellViewModel else { return }
        self.viewModel = viewModel
        self.label.text = viewModel.text
    }
}

extension ItemCell: LoadableNib {}
