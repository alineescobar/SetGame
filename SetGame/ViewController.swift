//
//  ViewController.swift
//  SetGame
//
//  Created by Aline Escobar on 10/11/20.
//

import UIKit

class ViewController: UIViewController {
    var deck = SetCardDeck()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }
}

