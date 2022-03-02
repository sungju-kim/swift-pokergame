//
//  PlayerView.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import Foundation
import UIKit

struct PlayerViewFactory {
    private var player : Player
    private var playerView : UIStackView {
        let cardsImage = HandViewFactory(cards: player.showHand()).showHandView()
        let name = self.player.yourName
        let cardsView = UIStackView()
        let label = UILabel()
        label.text = name
        label.textColor = .white
        cardsView.addArrangedSubview(label)
        label.font = UIFont.boldSystemFont(ofSize: 24)
        cardsView.distribution = .fillEqually
        cardsView.axis = .vertical
        cardsView.addArrangedSubview(cardsImage)

        return cardsView
    }
    init(player: Player) {
        self.player = player
    }
    func showPlayerView() -> UIStackView {
        return self.playerView
    }
}
