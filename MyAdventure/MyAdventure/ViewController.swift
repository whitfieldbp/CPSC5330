//
//  ViewController.swift
//  MyAdventure
//
//  Created by Benjamin Whitfield on 6/21/25.
//

import UIKit

class ViewController: UIViewController {
    
    var logic = AdventureLogic()
    
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var choiceButton3: UIButton!
    @IBOutlet weak var choiceButton4: UIButton!
    @IBOutlet weak var choiceButton5: UIButton!
    @IBOutlet weak var choiceButton6: UIButton!
    @IBOutlet weak var choiceButton7: UIButton!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if logic.getCurrentChoices().isEmpty {
            logic.reset()
        } else if let index = choiceButtons.firstIndex(of: sender) {
            logic.choose(_index: index)
            }
            updateUI()
        }
    var choiceButtons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceButtons = [choiceButton1, choiceButton2, choiceButton3, choiceButton4, choiceButton5, choiceButton6, choiceButton7]
        
        updateUI()
    }

    func updateUI() {
        let choices = logic.getCurrentChoices()
        
        for (index, button) in choiceButtons.enumerated() {
            if index < choices.count {
                button.setTitle(choices[index], for: .normal)
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }
        
        // If no choices, show restart button
        if choices.isEmpty {
            for button in choiceButtons.dropLast() {
                button.isHidden = true
            }
            choiceButton7.setTitle("Restart Adventure", for: .normal)
            choiceButton7.isHidden = false
        }
        
        questionLabel.text = logic.getCurrentDescription()
        if let imageName = logic.getCurrentImageName() {
            imageView.image = UIImage(named: imageName)
        }
    }
}

