//
//  TitleItemViewModel.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

struct TitleItemViewModel: CardItemViewModel {
    static var staticIdentifier: String {
        return "TitleItemViewModel"
    }

    let title: String
}
