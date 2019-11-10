//
//  GameActions.swift
//  Choose Figure
//  Created by Tushar Sharma.
//  Copyright © 2019. All rights reserved.

import Foundation

protocol GameActions {
    
    var score: Int { get }
    var bestScore: Int { get }
    
    var deck: [String] { get }
    var rightFigureName: String? { get }
    
    func userChoose(index: Int)
    
    init(delegate: GameEvents, deckSize: Int)
    
}
// done.
