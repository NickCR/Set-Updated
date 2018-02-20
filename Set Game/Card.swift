//
//  Card.swift
//  Set Game
//
//  Created by Jelly Slather on 2/16/18.
//  Copyright © 2018 Rudinski. All rights reserved.
//

import Foundation

enum ShapeType: String {
    case Triangle = "\u{25B2}"
    case Circle = "\u{25CF}"
    case Square = "\u{25A0}"
}

enum ShapeColor: String {
    case Red = "Red"
    case Green = "Green"
    case Purple = "Purple"
}

enum ShapeShade: String {
    case Filled = "Filled"
    case Striped = "Striped"
    case Empty = "Empty"
}
    
struct Card {
    
    let cardShape : ShapeType
    let cardColor : ShapeColor
    let cardShade : ShapeShade
}



func createDeck() -> [Card] {
    let cardShape = [ShapeType.Triangle, ShapeType.Circle, ShapeType.Square]
    let cardColor = [ShapeColor.Red, ShapeColor.Green, ShapeColor.Purple]
    let cardShade = [ShapeShade.Filled, ShapeShade.Striped, ShapeShade.Empty]
    var deck = [Card]()
    for cardShape in cardShape {
        for cardColor in cardColor {
            for cardShade in cardShade {
                deck.append(Card(cardShape: cardShape, cardColor: cardColor, cardShade: cardShade))
            }
        }
    }
    return deck
}


