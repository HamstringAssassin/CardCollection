//
//  UIView+Border.swift
//  CardViewController
//
//  Created by Al O'Connor on 1/5/20.
//  Copyright © 2020 Al O'Connor. All rights reserved.
//

import UIKit

extension UIView {
    func applyBorder() {
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.12).cgColor
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
    }
}
