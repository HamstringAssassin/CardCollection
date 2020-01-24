//
//  FixedHeightTableVIew.swift
//  CardViewController
//
//  Created by Al O'Connor on 1/1/20.
//  Copyright © 2020 Al O'Connor. All rights reserved.
//

import UIKit

class FixedHeightTableView: UITableView {
    override var contentSize:CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)

    }
}
