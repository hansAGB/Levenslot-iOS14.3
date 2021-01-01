//
//  Story.swift
//  Levenslot-iOS14.3
//
//  Created by Hans Aangeenbrug on 01/01/2021.
//

import Foundation

struct Story {
    let title: String
    var choice1: String
    var choice1Destination: Int
    var choice2: String
    var choice2Destination: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
