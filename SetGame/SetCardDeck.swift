//
//  SetCardDeck.swift
//  SetGame
//
//  Created by Aline Escobar on 10/11/20.
//

import Foundation

struct SetCardDeck {
    private(set) var cards = [SetCard]()
    
    init() {
        for color in SetCard.Color.all {
            for number in SetCard.Number.all {
                for shading in SetCard.Shading.all{
                    for shape in SetCard.Shape.all{
                        cards.append(SetCard(color: color, number: number, shading: shading, shape: shape))
                    }
                }
                
            }
        }
    }
    
    mutating func draw() -> SetCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
