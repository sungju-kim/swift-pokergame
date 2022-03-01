//
//  PlayerView.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import Foundation

struct PlayerView {
    private let players : Players
    init(players: Players) {
        self.players = players
    }
    func showCards() {
        for player in players {
            let hand = player.showHand()
            for card in hand {
                print(card)
            }
        }
    }
}
