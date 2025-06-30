//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by Benjamin Whitfield on 6/29/25.
//

import UIKit

class ConverterView: UIViewController {

    var amount: Int = 0
    var selectedCurrencies: [String] = []
    var converter = ConverterLogic()
    
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var florinLabel: UILabel!
    @IBOutlet weak var rupeeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usdLabel.text = "Amount in USD: \(amount)"
        
        converter.setup(amount: amount, selected: selectedCurrencies);
        
       let conversions = converter.getConversions()
       if selectedCurrencies.contains("Euro") {
            euroLabel.text = "Amount in Euro: \(conversions["Euro"] ?? "")"
        }
        if selectedCurrencies.contains("Peso") {
            pesoLabel.text = "Amount in Peso: \(conversions["Peso"] ?? "")"
        }
        if selectedCurrencies.contains("Florin") {
            florinLabel.text = "Amount in Florin: \(conversions["Florin"] ?? "")"
        }
        if selectedCurrencies.contains("Rupee") {
            rupeeLabel.text = "Amount in Rupee: \(conversions["Rupee"] ?? "")"
        }
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
