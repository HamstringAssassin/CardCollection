//
//  CardModelFactory.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/5/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

struct Card {
    let items: [CardItem]
}

struct CardItem {
    let title: String
}

struct CardModelFactory {

    static func generateRandomModels(_ numberOfModels: Int = 1, with maxItems: Int = 5) -> [Card] {
        var cards: [Card] = []
        for model in 1...numberOfModels {
            var items: [CardItem] = []
            let totalItems = Int.random(in: 1...maxItems)
            for value in 1...totalItems {
                let item = CardItem(title: "Card \(model) ---- CardItem \(value)")
                items.append(item)
            }
            let card = Card(items: items)
            cards.append(card)
        }
        return cards
    }

    static func generateRandomViewModels(_ numberOfModels: Int = 1, with maxItems: Int = 5) -> [CardViewModel] {
        let cards = CardModelFactory.generateRandomModels(numberOfModels, with: maxItems)
        return cards.map { (card) in
            return CardViewModel(card: card)
        }
    }

    static func generateModels() -> [Card] {
        let item1 = CardItem(title: "Card 1 - CardItem 1")
        let item2 = CardItem(title: "Card 1 - CardItem 2")
        let item3 = CardItem(title: "Card 1 - CardItem 3")

        let item4 = CardItem(title: "Card 2 - CardItem 1")
        let item5 = CardItem(title: "Card 2 - CardItem 2")
        let item6 = CardItem(title: "Card 2 - CardItem 3")
        let item7 = CardItem(title: "Card 2 - CardItem 4")
        let item8 = CardItem(title: "Card 2 - CardItem 5")

        let item9 = CardItem(title: "Card 3 - CardItem 1")
        let item10 = CardItem(title: "Card 3 - CardItem 2")
        let item11 = CardItem(title: "Card 3 - CardItem 3")
        let item12 = CardItem(title: "Card 3 - CardItem 4")

        let item13 = CardItem(title: "Card 4 - CardItem 1")
        let item14 = CardItem(title: "Card 4 - CardItem 2")
        let item15 = CardItem(title: "Card 4 - CardItem 3")
        let item16 = CardItem(title: "Card 4 - CardItem 4")
        let item17 = CardItem(title: "Card 4 - CardItem 5")

        let item18 = CardItem(title: "Card 5 - CardItem 1")
        let item19 = CardItem(title: "Card 5 - CardItem 2")
        let item20 = CardItem(title: "Card 5 - CardItem 3")
        let item21 = CardItem(title: "Card 5 - CardItem 4")
        let item22 = CardItem(title: "Card 5 - CardItem 5")

        let card1 = Card(items: [item1, item2, item3])
        let card2 = Card(items: [item4, item5, item6, item7, item8])
        let card3 = Card(items: [item9, item10, item11, item12])
        let card4 = Card(items: [item13, item14, item15, item16, item17])
        let card5 = Card(items: [item18, item19, item20, item21, item22])

        return [card1, card2, card3, card4, card5]
    }

}

