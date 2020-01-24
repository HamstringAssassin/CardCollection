//
//  FooterItemViewModel.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/18/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation
import UIKit

struct FooterItemViewModel: CardItemViewModel {
    static var staticIdentifier: String {
        return "FooterItemViewModel"
    }

    let footerText: String

    var footerBackgroundColor: UIColor {
        return UIColor.lightGray.withAlphaComponent(0.2)
    }
    
}
