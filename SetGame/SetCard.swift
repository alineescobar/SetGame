//
//  SetCard.swift
//  SetGame
//
//  Created by Aline Escobar on 10/11/20.
//

import Foundation

struct SetCard {
    var color: Color
    var number: Number
    var shading: Shading
    var shape: Shape
    
    enum Color: String{
        case cyan = "cyan"
        case green = "green"
        case red = "red"
        
        static var all = [Color.cyan, .green, .red]
    }
    enum Number: Int{
        case um = 1
        case dois = 2
        case tres = 3
        
        static var all = [Number.um, .dois, .tres]
        
    }
    
    enum Shading {
        case faded
        case open
        case solid
        
        static var all = [Shading.faded, .open, .solid]
    }
    enum Shape: String{
        case circular = "●"
        case square = "■"
        case triangle = "▲"
        
        static var all = [Shape.circular, .square, .triangle]
    }
}
