//
//  Cards.swift
//  PokerGameApp
//
//  Created by dale on 2022/02/24.
//

import Foundation

struct Cards : Equatable {
    private var cards : [Card]
    var count : Int {
        return cards.count
    }
    init() {
        self.cards = []
    }
    mutating func add(card:Card) {
        cards.append(card)
    }
    mutating func pop() -> Card? {
        return cards.removeFirst()
    }
    func lookUP(index: Int) -> Card {
        return cards[index]
    }
    mutating func swapCard(at index: Int, with : Card) {
        cards[index] = with
    }
    func showCards() -> [Card] {
        return self.cards
    }
}

extension Cards: Collection {
    typealias Index = Int
    var startIndex: Int {
        return 0
    }
    var endIndex: Int {
        return cards.count - 1 
    }
    func index(after n: Index) -> Index {
        return n + 1
    }
    subscript(i: Index) -> Card {
        return cards[endIndex-i]
    }
}
