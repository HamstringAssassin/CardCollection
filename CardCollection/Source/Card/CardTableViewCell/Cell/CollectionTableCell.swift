//
//  CollectionTableCell.swift
//  CardViewController
//
//  Created by Al O'Connor on 1/1/20.
//  Copyright © 2020 Al O'Connor. All rights reserved.
//

import UIKit

class CollectionTableCell: UITableViewCell {

    var viewModel: CardViewModel? {
        didSet {
            collectionView.reloadData()
        }
    }

    //Used for shadow on collectionView.
    @IBOutlet weak var collectionContainer: UIView! {
        didSet {
            collectionContainer.applyShadowStyle()
        }
    }

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self

            collectionView.register(ItemCell.nib(), forCellWithReuseIdentifier: ItemCellViewModel.staticIdentifier)
            collectionView.register(TitleItemCell.nib(), forCellWithReuseIdentifier: TitleItemViewModel.staticIdentifier)
            collectionView.register(FooterItemCell.nib(), forCellWithReuseIdentifier: FooterItemViewModel.staticIdentifier)
            collectionView.register(ImageItemCell.nib(), forCellWithReuseIdentifier: ImageItemViewModel.staticIdentifier)

            collectionView.applyBorder()

            let flowLayout = collectionView.collectionViewLayout as? CardFlowLayout
            flowLayout?.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    override func systemLayoutSizeFitting(_ targetSize: CGSize,
                                          withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority,
                                          verticalFittingPriority: UILayoutPriority) -> CGSize {
        collectionView.frame = CGRect(x: 0, y: 0, width: targetSize.width , height: 1.0)
        self.layoutIfNeeded()
        var cellSize = collectionView.collectionViewLayout.collectionViewContentSize
        cellSize.height += 20
        return cellSize
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
}

extension CollectionTableCell: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.dataSource.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let itemViewModel = viewModel?.dataSource[indexPath.row]
        guard let reuseIdentifer = itemViewModel?.identifier() else { return UICollectionViewCell() }

        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifer, for: indexPath) as? ItemCell {
            cell.updateWith(viewModel: itemViewModel)
            return cell
        } else if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifer, for: indexPath) as? TitleItemCell {
            cell.updateWith(viewModel: itemViewModel)
            return cell
        } else if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifer, for: indexPath) as? FooterItemCell {
            cell.updateWith(viewModel: itemViewModel)
            return cell
        } else if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifer, for: indexPath) as? ImageItemCell {
            cell.updateWith(viewModel: itemViewModel)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

extension CollectionTableCell: Cell {
    func updateWith(viewModel: ViewModel?) {
        guard let viewModel = viewModel as? CardViewModel else { return }
        self.viewModel = viewModel
    }
}
