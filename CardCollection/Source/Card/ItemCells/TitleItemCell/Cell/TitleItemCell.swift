//
//  TitleItemCell.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import UIKit

class TitleItemCell: CardItemCell {
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
            titleLabel.numberOfLines = 1
            titleLabel.textColor = .systemGray
        }
    }

    private var viewModel: TitleItemViewModel?
}

extension TitleItemCell: Cell {
    func updateWith(viewModel: ViewModel?) {
        guard let viewModel = viewModel as? TitleItemViewModel else { return }
        self.viewModel = viewModel
        self.titleLabel.text = viewModel.title
    }
}

extension TitleItemCell: LoadableNib {}
