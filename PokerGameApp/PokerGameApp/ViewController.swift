//
//  ViewController.swift
//  PokerGameApp
//
//  Created by dale on 2022/02/21.
//

import UIKit

class ViewController: UIViewController {
    var pokerGame = PokerGame(stud: .sevenCard, playerCount: .four)
    override func viewDidLoad() {
        super.viewDidLoad()
        if let backGround = UIImage(named: "bg_pattern.png"){
            self.view.backgroundColor = UIColor(patternImage: backGround)
        }
        
        pokerGame.play()
        showWholeCards()
    }
    func createHand(numberOfCard: Int){
        let screenSize = UIScreen.main.bounds
        let blank : CGFloat = 4
        let totalBlank : CGFloat = CGFloat(numberOfCard + 1) * blank
        let cardWidth = (screenSize.width - totalBlank) / CGFloat(numberOfCard)
        let cardHeight = cardWidth * 1.27
        let cardBackSide = UIImage(named: "card-back.png")
        let margin : CGFloat = cardWidth + blank
        for i in 0..<Int(numberOfCard) {
            let imageView = UIImageView(frame: CGRect(x: (margin * CGFloat(i))+blank, y: 40, width: cardWidth,height: cardHeight))
            imageView.contentMode = .scaleToFill
            imageView.layer.cornerRadius = 3
            imageView.clipsToBounds = true
            imageView.image = cardBackSide
            self.view.addSubview(imageView)
        }
    }
    
    func showWholeCards() {
        let players = pokerGame.showPlayers()
        let playersViewFactory = PlayersViewFactory(players: players)
        let playersView = playersViewFactory.showPlayersView()
        playersView.translatesAutoresizingMaskIntoConstraints = false
        let safeArea = view.safeAreaLayoutGuide
        self.view.addSubview(playersView)
        
        playersView.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.7).isActive = true
        playersView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.8).isActive = true
        playersView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 30).isActive = true
        playersView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -30).isActive  = true
    }
}


