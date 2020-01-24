//
//  ItemCellViewModel.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

struct ItemCellViewModel: CardItemViewModel {
    static var staticIdentifier: String {
        return "ItemCell"
    }

    let text: String
}
