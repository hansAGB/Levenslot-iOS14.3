//
//  StoryBrain.swift
//  Levenslot-iOS14.3
//
//  Created by Hans Aangeenbrug on 01/01/2021.
//

import Foundation

struct StoryBrain {
    
    let story = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var linkIndex = 0
    
    mutating func NextStory(choiceText: String) {
        if choiceText == story[linkIndex].choice1 {
            //Left
            linkIndex = 1
        } else if choiceText == story[linkIndex].choice2 {
            //Right
            linkIndex = 2
        }
    }
    
    func getLinkIndex() -> Int {
        return linkIndex
    }
    
}
