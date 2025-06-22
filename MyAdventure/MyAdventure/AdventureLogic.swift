//
//  AdventureLogic.swift
//  MyAdventure
//
//  Created by Benjamin Whitfield on 6/22/25.
//

struct AdventureLogic {
    
    var currentScene: AdventureScene?
    private let startScene: AdventureScene
    
    mutating func choose(_index: Int) {
        if let nextScene = currentScene?.outcomes[_index] {
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
    
    init() {
        // Reality Stone outcomes
        let realityA = AdventureScene(
            description: "You look amazing and even the most beautiful person you've ever seen stares at you lovingly",
            imageName: "couple",
            choices: [],
            outcomes: []
        )
        
        let realityB = AdventureScene(
            description: "The world appears how you imagined heaven would be like",
            imageName: "heaven",
            choices: [],
            outcomes: []
        )
        
        let realityNode = AdventureScene(
            description: "You took the Reality Stone. What will you do?",
            imageName: "reality",
            choices: ["I want to appear beautiful", "I want to make the world beautiful"],
            outcomes: [realityA, realityB]
        )
        
        // Space Stone outcomes
        let spaceA = AdventureScene(
            description: "You appear on Mars but instantly start to suffocate and die",
            imageName: "mars",
            choices: [],
            outcomes: []
        )
        
        let spaceB = AdventureScene(
            description: "You teleport onto a beautiful Hawaiian beach. Now all you have to do is teleport to a Pina Colada bar and drink one...",
            imageName: "beach",
            choices: [],
            outcomes: []
        )
        
        let spaceNode = AdventureScene(
            description: "You took the Space Stone. What will you do?",
            imageName: "spaceStone",
            choices: ["I want to go to Mars", "I want to go on a vacation"],
            outcomes: [spaceA, spaceB]
        )
        
        // Mind Stone outcomes
        let mindA = AdventureScene(
            description: "Everyone's thoughts hit you at once. It's so loud in your mind it overwhelms you. You continuously scream for everyone to quiet down.",
            imageName: "headache",
            choices: [],
            outcomes: []
        )
        
        let mindB = AdventureScene(
            description: "You now have a zombie army that does as you wish. You'll never be lonely again...",
            imageName: "parents",
            choices: [],
            outcomes: []
        )
        
        let mindNode = AdventureScene(
            description: "You took the Mind Stone. What will you do?",
            imageName: "mind",
            choices: ["I want to know everyone's thoughts", "I want to control everyone's minds"],
            outcomes: [mindA, mindB]
        )
        
        // Time Stone outcomes
        let timeA = AdventureScene(
            description: "You have made a mistake and gone too far back. You realize you must run for life from these prehistoric beasts.",
            imageName: "dinosaur",
            choices: [],
            outcomes: []
        )
        
        let timeB = AdventureScene(
            description: "The future is grim. It looks as if all people are gone and you must mentally prepare for the loneliness to come.",
            imageName: "future",
            choices: [],
            outcomes: []
        )
        
        let timeNode = AdventureScene(
            description: "You took the Time Stone. What will you do?",
            imageName: "time",
            choices: ["I want to go back in time", "I want to go forward in time"],
            outcomes: [timeA, timeB]
        )
        
        // Power Stone outcomes
        let powerA = AdventureScene(
            description: "You finally showed your childhood bully who is boss. But what you did has caused everyone to fear and love you at the same time.",
            imageName: "biff",
            choices: [],
            outcomes: []
        )
        
        let powerB = AdventureScene(
            description: "Everyone kneels to your power. You hold a strong fist against anyone who would dare defy you.",
            imageName: "throne",
            choices: [],
            outcomes: []
        )
        
        let powerNode = AdventureScene(
            description: "You took the Power Stone. What will you do?",
            imageName: "power",
            choices: ["I want to punish my childhood bully", "I want to rull the world"],
            outcomes: [powerA, powerB]
        )
        
        // Soul Stone outcomes
        let soulA = AdventureScene(
            description: "All your ancestors visit you and share their knowledge. You feel comfort in knowing you'll never be alone again.",
            imageName: "ancestors",
            choices: [],
            outcomes: []
        )
        
        let soulB = AdventureScene(
            description: "You see ghosts everywhere. Unfortunately, you see so many around, you are overwhelemed by the souls of the suffering.",
            imageName: "ghosts",
            choices: [],
            outcomes: []
        )
    
        let soulNode = AdventureScene(
            description: "You took the Soul Stone. What will you do?",
            imageName: "soul",
            choices: ["I want to see my ancestors", "I want to talk to ghosts"],
            outcomes: [soulA, soulB]
        )
        
        // Take all stones outcome
        let allA = AdventureScene(
            description: "The power of the stones won't let you off that easy and you die from coming too close to power. But your soul wants to come back and try again.",
            imageName: "grave",
            choices: [],
            outcomes: []
        )
        
        let allB = AdventureScene(
            description: "The power of all the stones has overwhelmed you and you've died. You are at peace and move on to the next reality.",
            imageName: "grave",
            choices: [],
            outcomes: []
        )
        
        let allStonesNode = AdventureScene(
            description: "You took all the stones. What will you do?",
            imageName: "all_stones",
            choices: ["You change your mind and drop them.", "I want to use them all and push the limits of power"],
            outcomes: [allA, allB]
        )
        // Starting Scene
        let startScene = AdventureScene(
            description: "You found the Infinity Stones. Only take one or suffer the consequences...",
            imageName: "all_stones",
            choices: [
                "Take Reality Stone",
                "Take Space Stone",
                "Take Mind Stone",
                "Take Time Stone",
                "Tale Power Stone",
                "Take Soul Stone",
                "Take a chance and take them all"
            ],
            outcomes: [realityNode, spaceNode, mindNode, timeNode, powerNode, soulNode, allStonesNode]
        )
        
        self.startScene = startScene
        self.currentScene = startScene
    }
    
    mutating func reset() {
        currentScene = startScene
    }
}
