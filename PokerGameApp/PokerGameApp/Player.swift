//
//  Player.swift
//  PokerGameApp
//
//  Created by dale on 2022/02/23.
//

import Foundation
import UIKit

class Player {
    private let name : String
    private var hand : Cards
    var handCount : Int {
        return hand.count
    }
    
    var yourName : String {
        return name
    }
    
    init(name: String) {
        self.name = name
        self.hand = Cards()
    }
    
    func receive(_ card : Card) {
        self.hand.add(card: card)
    }
    
    func showHand() -> Cards {
        return self.hand
    }
    
}
