//
//  ViewController.swift
//  SetGame
//
//  Created by Aline Escobar on 10/11/20.
//

import UIKit

class ViewController: UIViewController {

    var deck = SetCardDeck()
    
    private lazy var test = deck.draw()
//    @IBOutlet private var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for _ in 1...12 {
//            if let card = deck.draw() {
//                print(card.color)
//                print(card.shading)
//                print(card.shape)
//                print(card.number)
//                print("-------------")
//            }
//        }
        
    }
    
    @IBOutlet weak var testeButton: UIButton! {
        didSet{
            switch test?.color {
            case Optional(SetGame.SetCard.Color.red):
                testeButton.layer.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            case Optional(SetGame.SetCard.Color.green):
                testeButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            case Optional(SetGame.SetCard.Color.red):
                testeButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
            default:
                testeButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
    }
    
}
