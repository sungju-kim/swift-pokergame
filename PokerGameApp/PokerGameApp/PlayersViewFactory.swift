//
//  PlayersView.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import Foundation
import UIKit

struct PlayersViewFactory {
    private let players : Players
    private var playersView : UIStackView {
        var playerImages : [UIStackView] = []
        for player in players {
            let playerImage = PlayerViewFactory(player: player).showPlayerView()
            playerImages.append(playerImage)
        }
        let temp = UIStackView(arrangedSubviews: playerImages)
        temp.distribution = .fillEqually
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }
    
    init(players: Players) {
        self.players = players
    }
    
    func showPlayersView() -> UIStackView {
        return self.playersView
    }
}
