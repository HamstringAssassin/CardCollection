//
//  UIView+Shadow.swift
//  CardViewController
//
//  Created by Al O'Connor on 1/5/20.
//  Copyright © 2020 Al O'Connor. All rights reserved.
//

import UIKit

extension UIView {
    func applyShadowStyle() {
        self.layer.shadowOpacity = 0.12
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2
        self.layer.cornerRadius = 4
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
}


