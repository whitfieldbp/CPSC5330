//
//  AdventureScene.swift
//  MyAdventure
//
//  Created by Benjamin Whitfield on 6/22/25.
//

class AdventureScene {
    let description: String
    let imageName: String?
    let choices: [String]
    let outcomes: [AdventureScene?]
    
    init(description: String, imageName: String?, choices: [String], outcomes: [AdventureScene?]) {
        self.description = description
        self.imageName = imageName
        self.choices = choices
        self.outcomes = outcomes
    }
}
