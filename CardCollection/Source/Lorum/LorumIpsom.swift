//
//  LorumIpsom.swift
//  ExploringSwift
//
//  Created by Al O'Connor on 1/20/20.
//  Copyright © 2020 HamstringAssassin. All rights reserved.
//

import Foundation

class LorumIpsom {
    private static var lorum: String {
        return """
        Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.
"""
    }

    static func randomIpsom() -> String {
        let maxValue = lorum.count
        let length = Int.random(in: 0..<maxValue)
        let index = lorum.index(lorum.startIndex, offsetBy: length)
        return String(lorum[lorum.startIndex..<index])
    }
}
