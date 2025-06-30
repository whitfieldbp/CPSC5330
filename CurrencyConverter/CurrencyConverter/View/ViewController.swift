//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Benjamin Whitfield on 6/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var pesoSwitch: UISwitch!
    @IBOutlet weak var florinSwitch: UISwitch!
    @IBOutlet weak var rupeeSwitch: UISwitch!
    
    var selectedCurrencies: [String] = []
    var amount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
        
    }

    @IBAction func convertPressed(_ sender: UIButton) {
        guard let inputText = usdTextField.text, let inputAmount = Int(inputText) else {
            errorLabel.text = "Please enter a valid USD amount."
            errorLabel.isHidden = false
            return
        }
        
        amount = inputAmount
        selectedCurrencies = []
        
        if euroSwitch.isOn {
            selectedCurrencies.append("Euro") }
        if pesoSwitch.isOn {
            selectedCurrencies.append("Peso") }
        if florinSwitch.isOn {
            selectedCurrencies.append("Florin") }
        if rupeeSwitch.isOn {
            selectedCurrencies.append("Rupee") }
        
        if selectedCurrencies.isEmpty {
            errorLabel.text = "Please select at least one currency."
            errorLabel.isHidden = false
            return
        }
        
        errorLabel.isHidden = true
        performSegue(withIdentifier: "toConverter", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConverter" {
            let destinationVC = segue.destination as! ConverterView
            destinationVC.amount = amount
            destinationVC.selectedCurrencies = selectedCurrencies
        }
    }
}

