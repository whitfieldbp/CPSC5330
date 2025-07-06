//
//  DetailViewController.swift
//  ConsoleTableView
//
//  Created by Benjamin Whitfield on 7/6/25.
//

import UIKit

class DetailViewController: UIViewController {

    var console: GameConsoleLogic?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var salesLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let console = console {
            nameLabel.text = console.name
            releaseDateLabel.text = "Launch Year: \(console.releaseYear)"
            salesLabel.text = "Sales: \(console.sales)"
            manufacturerLabel.text = "Manufacturer: \(console.manufacturer)"
            funFactLabel.text = "Fun Fact: \(console.funFact)"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
