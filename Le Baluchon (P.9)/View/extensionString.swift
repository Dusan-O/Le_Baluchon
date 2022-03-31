//
//  extensionString.swift
//  Le Baluchon
//
//  Created by Dusan Orescanin on 24/03/2022.
//

import Foundation


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
