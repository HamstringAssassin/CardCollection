//
//  ImageItemViewModel.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation
import UIKit

struct ImageItemViewModel: CardItemViewModel {
    static var staticIdentifier: String {
        return "ImageItemViewModel"
    }

    let imageViewBackgroundColor: UIColor

    let text: String

    init(index: Int, text: String) {
        self.imageViewBackgroundColor = ImageItemViewModel.colorFromIndex(index)
        self.text = text + LorumIpsom.randomIpsom()
    }

    private static func colorFromIndex(_ index: Int) -> UIColor {
        return (index % 2 == 0) ? UIColor.red.withAlphaComponent(0.5) : UIColor.green.withAlphaComponent(0.5)
    }
}
