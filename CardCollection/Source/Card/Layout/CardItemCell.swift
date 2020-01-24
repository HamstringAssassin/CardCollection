//
//  CardItemCell.swift
//  ExploringSwift
//
//  Created by Alan O'Connor on 14/01/2020.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import UIKit

protocol CardItemCellProtocol: UICollectionViewCell {}

class CardItemCell: UICollectionViewCell, CardItemCellProtocol {
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let layoutAttributes = super.preferredLayoutAttributesFitting(layoutAttributes)
        layoutIfNeeded()
        layoutAttributes.frame.size = systemLayoutSizeFitting(UIView.layoutFittingCompressedSize,
                                                              withHorizontalFittingPriority: .required,
                                                              verticalFittingPriority: .fittingSizeLevel)
        return layoutAttributes
    }
}
