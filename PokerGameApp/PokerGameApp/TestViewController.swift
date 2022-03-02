//
//  TestViewController.swift
//  PokerGameApp
//
//  Created by dale on 2022/03/01.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var stackView = UIStackView(frame: CGRect(x: 10, y: 64, width: 600, height: 350))
        stackView.backgroundColor = .blue
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = -30
        for i in 0...5 {
            let label = UILabel()
            label.backgroundColor = .white
            if i % 2 == 0 {
                label.backgroundColor = .red
            }
            label.text = "\(i)"
            label.textAlignment = .center
            stackView.addArrangedSubview(label)

        }
        view.addSubview(stackView)
    }
    
    
}

