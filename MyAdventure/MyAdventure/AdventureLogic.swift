//
//  AdventureLogic.swift
//  MyAdventure
//
//  Created by Benjamin Whitfield on 6/22/25.
//

struct AdventureLogic {
    
    var currentScene: AdventureScene?
    
    mutating func choose(_index: Int) {
        if let nextScene = currentScene?.choices[_index] {
            currentScene = nextScene
        } else {
            currentScene = nil
        }
    }
    
    func getCurrentDescription() -> String {
        return currentScene?.description ?? ""
    }
    
    func getCurrentChoices() -> [String] {
        return currentScene?.choices ?? []
    }
    
    func getCurrentImageName() -> String? {
        return currentScene?.imageName
    }
}
