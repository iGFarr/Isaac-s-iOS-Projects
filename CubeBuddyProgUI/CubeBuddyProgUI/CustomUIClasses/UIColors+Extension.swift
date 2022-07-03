//
//  CBColors.swift
//  CubeBuddyProgUI
//
//  Created by Isaac Farr on 7/2/22.
//

import UIKit

enum CustomColors: String {
    
    case primary = "CBPrimary"
    case secondary = "CBSecondary"
}

extension UIColor {
    struct CBTheme {
        static let primary = UIColor(named: "CBPrimary")
        static let secondary = UIColor(named: "CBSecondary")
    }
}
