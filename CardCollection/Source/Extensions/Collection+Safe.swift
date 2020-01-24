//
//  Collection+Safe.swift
//  CardViewController
//
//  Created by Al O'Connor on 1/5/20.
//  Copyright © 2020 Al O'Connor. All rights reserved.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
