//
//  GameEvents.swift
//  Choose Figure
//  Created by Tushar Sharma
//  Copyright © 2019. All rights reserved.
//

import Foundation

protocol GameEvents {
    
    var level: Int { get set }
    var lives: Int { get set }
    
    func userDidRightChoice(index: Int)
    func userDidWrongChoice()
    
    func gameOver()
    func moveToNextLevel()
    
}
//-------*-----
