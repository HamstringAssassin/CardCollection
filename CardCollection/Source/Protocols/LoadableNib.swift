//
//  LoadableNib.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/20/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation
import UIKit

protocol LoadableNib {
    static func nib() -> UINib
}

extension LoadableNib where Self: UIView {
    static func nib() -> UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}
