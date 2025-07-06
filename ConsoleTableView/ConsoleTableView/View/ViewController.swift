//
//  ViewController.swift
//  ConsoleTableView
//
//  Created by Benjamin Whitfield on 7/3/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let consoles: [GameConsoleLogic] = [
        GameConsoleLogic(name: "Playstation 2", releaseYear: 2000, sales: "155M", manufacturer: "Sony", funFact: "Best-selling console of all time"),
        GameConsoleLogic(name: "Super Nintendo", releaseYear:   1990, sales: "100M", manufacturer: "Nintendo", funFact: "First home video game console to feature built-in CD player"),
        GameConsoleLogic(name: "Xbox", releaseYear: 2001, sales: "80M", manufacturer: "Microsoft", funFact: "First home video game console to feature online multiplayer"),
        GameConsoleLogic(name: "Game Boy", releaseYear: 1989, sales: "130M", manufacturer: "Nintendo", funFact: "First handheld video game console"),
        GameConsoleLogic(name: "Sega Genesis", releaseYear: 1988, sales: "90M", manufacturer: "Sega", funFact: "First home video game console to feature 32-bit graphics"),
        GameConsoleLogic(name: "N64", releaseYear: 1996, sales: "50M", manufacturer: "Nintendo", funFact: "First home video game console to feature built-in Wi-Fi"),
        GameConsoleLogic(name: "Dreamcast", releaseYear: 1998, sales: "30M", manufacturer: "Sony", funFact: "First home video game console to feature 3D graphics"),
        GameConsoleLogic(name: "Atari 2600", releaseYear: 1977, sales: "20M", manufacturer: "Atari", funFact: "First home video game console to feature built-in sound"),
        GameConsoleLogic(name: "TurboGrafx-16", releaseYear: 1992, sales: "20M", manufacturer: "SNK", funFact: "First home video game console to feature 16-bit graphics"),
        GameConsoleLogic(name: "Intellivision", releaseYear: 1983, sales: "10M", manufacturer: "Atari", funFact: "First home video game console to feature built-in color display"),
        GameConsoleLogic(name: "Playstation 3", releaseYear: 2006, sales: "40M", manufacturer: "Sony", funFact: "First home video game console to feature Blu-ray")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return consoles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let console =  consoles[indexPath.row]
        content.text = console.name
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail",
           let destination = segue.destination as? DetailViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            let selectedConsole = consoles[indexPath.row]
            destination.console = selectedConsole
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

