//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by Benjamin Whitfield on 6/29/25.
//

import UIKit

class ConverterView: UIViewController {

    var amount: Int = 0
    var selectedCurrency: [String] = []
    let converter = ConverterLogic()
    
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var florinLabel: UIStackView!
    @IBOutlet weak var rupeeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usdLabel.text = "Amount in USD: \(amount)"
        
        euroLabel.text = selectedCurrency.contains("Euro") ? "Amount in EUR: \(converter.convert(amountInUSD: amount, to: "Euro"))" : ""
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
