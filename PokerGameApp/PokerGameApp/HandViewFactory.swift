//
//  CardsView.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import Foundation
import UIKit

struct HandViewFactory {
    private let cards : Cards
    private var handView : UIStackView {
        var subViews : [UIImageView] = []
        for card in cards {
            guard let cardImage = CardViewFactory(card: card).showCardFront() else {break}
            subViews.append(cardImage)
        }
        let handView = UIStackView(arrangedSubviews: subViews)
        handView.distribution = .fillEqually
        handView.spacing = -50
        handView.axis = .horizontal
        return handView
    }

    init(cards: Cards){
        self.cards = cards
    }

    func showHandView() -> UIStackView {
        return handView
    }
}

