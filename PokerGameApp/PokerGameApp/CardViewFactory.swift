//
//  CardView.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import Foundation
import UIKit

struct CardViewFactory {
    private var card : Card
    private let cardBackSide = UIImage(named: "card-back.png")
    private var cardFrontSide : UIImageView? {
        let card = card.description
        let cardImage = UIImage(named: "\(card).png")
        let cardView = UIImageView(image: cardImage)
        cardView.contentMode = .scaleAspectFit
        return cardView
    }
    init(card : Card) {
        self.card = card
    }

    func showCardFront() -> UIImageView? {
        return cardFrontSide
    }
}
