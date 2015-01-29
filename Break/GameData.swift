//
//  GameData.swift
//  Break
//
//  Created by Bobby Towers on 1/29/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

import UIKit

let _mainData: GameData = { GameData() }()

class GameData: NSObject {

    var topScore: Int = 0
    
    // init an empty array that only accepts String:Int dictionaries
    var gamesPlayed: [[String:Int]] = []
    var currentGame: [String:Int]? {
        
        get {
    
        return gamesPlayed[gamesPlayed.count - 1]
    
        }
        
        set {
            
            gamesPlayed[gamesPlayed.count - 1] = newValue!
            
        }
        
    }
    
    // allLevels is an array
    // (col,row)
    var allLevels = [
    
        (4,1),
        (6,2),
        (7,3),
        (8,4),
        (20,10)
    
    ]
    
    var currentLevel = 0
    
    class func mainData() -> GameData { return _mainData }
    
    // instance methods startGame() and adjustValue() is on the single instance of this singleton
    
    func startGame() {
        
        gamesPlayed.append([
            
            "livesLost":0,
            "bricksBusted":0,
            "levelBeaten":0,
            "totalScore":0
            
        ])
        
    }
    
    func adjustValue(difference: Int, forKey key: String) {
        
        // if var value gets the unwrapped value of the optional
        if var value = currentGame?[key] {
            
            currentGame?[key] = value + difference
            
        }
        
    }
    
}

// GameData.mainData()
// GameData is the class, mainData is the class function
// it returns the mainData object

// GameData is his DNA, mainData is Dr. Who
// Dr.Who is the same person but travels in different times, so if he's stabbed in the past, he's still stabbed while at a different point in time