//
//  CardViewModel.swift
//  ExploringSwift
//
//  Created by Alan O'Connor on 14/01/2020.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

protocol CardViewModelProtocol: ViewModel {
    var dataSource: [CardItemViewModel] { get }
}
