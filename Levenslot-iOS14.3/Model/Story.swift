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
    var choice2: String
    
    init(title: String, choice1: String, choice2: String) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
