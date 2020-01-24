//
//  FooterItemCell.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import UIKit

class FooterItemCell: CardItemCell {

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = UIFont.systemFont(ofSize: 12)
            label.numberOfLines = 1
            label.textAlignment = .center
            label.textColor = .systemBlue
        }
    }

    private var viewModel: FooterItemViewModel?

}

extension FooterItemCell: Cell {
    func updateWith(viewModel: ViewModel?) {
        guard let viewModel = viewModel as? FooterItemViewModel else { return }
        self.viewModel = viewModel
        label.text = viewModel.footerText
        contentView.backgroundColor = viewModel.footerBackgroundColor
    }
}

extension FooterItemCell: LoadableNib {}
