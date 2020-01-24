//
//  CardItemViewModel.swift
//  ExploringSwift
//
//  Created by Alan O'Connor on 14/01/2020.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

protocol CardItemViewModel: ViewModel {
    static var staticIdentifier: String { get }

    func identifier() -> String
}

extension CardItemViewModel {
    func identifier() -> String {
        return Self.staticIdentifier
    }
}
