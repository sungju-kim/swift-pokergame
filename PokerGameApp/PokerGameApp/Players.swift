//
//  Players.swift
//  PokerGameApp
//
//  Created by dale on 2022/02/24.
//

import Foundation

class Players {
    private var players : [Player] = []
    var count : Int {
        return players.count
    }
    var playersCardCount : [Int] {
        var cardCount : [Int] = []
        for player in players {
            cardCount.append(player.handCount)
        }
        return cardCount
    }
    
    func seat(player: Player) {
        self.players.append(player)
    }
    
    func eachReceive(card: Card, index : Int) {
        players[index].receive(card)
    }
    func showPlayers() {
        for player in players {
        }
    }
    
}

extension Players: Collection {
    typealias Index = Int
    var startIndex: Int {return 0}
    var endIndex: Int { return players.count - 1}
    func index(after i: Int) -> Int {
        return i + 1
    }
    subscript(i: Index) -> Player {
        return players[endIndex-i]
    }

}
