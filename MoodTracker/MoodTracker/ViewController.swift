//
//  ViewController.swift
//  MoodTracker
//
//  Created by Benjamin Whitfield on 6/15/25.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var feelingLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UIDatePicker!
    
    @IBOutlet weak var savedMoodLabel: UILabel!
    
    var moodValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Default mood
        feelingLabel.text = "Neutral 😐"
        savedMoodLabel.isHidden = true
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        moodValue = Int(round(sender.value))
        updateMoodLabel(for: moodValue)
    }

    func updateMoodLabel(for value: Int) {
        if (0...20).contains(value) {
            feelingLabel.text = "Very Sad 😢"
        } else if (21...40).contains(value) {
            feelingLabel.text = "Sad ☹️"
        } else if (41...60).contains(value) {
            feelingLabel.text = "Neutral 😐"
        } else if (61...80).contains(value) {
            feelingLabel.text = "Happy 😊"
        } else if (81...100).contains(value) {
            feelingLabel.text = "Very Happy 😄"
        } else {
            feelingLabel.text = "Neutral 😐"
        }
    }
    
    @IBAction func saveMood(_ sender: UIButton) {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        let dateString = formatter.string(from: dateLabel.date)
        
        let moodTextParts = feelingLabel.text?.split(separator: " ")
        let moodEmoji = moodTextParts?.last ?? ""
        
        savedMoodLabel.text = ""
        savedMoodLabel.text = "On \(dateString), you felt \(moodEmoji)"
        savedMoodLabel.isHidden = false
    }
}

