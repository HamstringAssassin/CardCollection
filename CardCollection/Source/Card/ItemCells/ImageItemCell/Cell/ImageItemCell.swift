//
//  ImageItemCell.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import UIKit

class ImageItemCell: CardItemCell {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.numberOfLines = 0
        }
    }

    private var viewModel: ImageItemViewModel?
}

extension ImageItemCell: Cell {
    func updateWith(viewModel: ViewModel?) {
        guard let viewModel = viewModel as? ImageItemViewModel else { return }
        self.viewModel = viewModel
        imageView.backgroundColor = viewModel.imageViewBackgroundColor
        label.text = viewModel.text
    }
}

extension ImageItemCell: LoadableNib {}
