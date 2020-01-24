//
//  CardViewModel.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/19/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

struct CardViewModel: CardViewModelProtocol {
    var dataSource: [CardItemViewModel]

    init(card: Card) {
        var mutableItemViewModels: [CardItemViewModel] = []

        mutableItemViewModels.append(TitleItemViewModel(title: "Card Title"))
        mutableItemViewModels.append(ImageItemViewModel(index: 1, text: "Image Cell at index \(1)"))

        mutableItemViewModels.append(contentsOf: card.items.map { (itemModel) in
            return ItemCellViewModel(text: itemModel.title)
        })

        mutableItemViewModels.append(FooterItemViewModel(footerText: "Card Footer"))

        self.dataSource = mutableItemViewModels
    }

}
