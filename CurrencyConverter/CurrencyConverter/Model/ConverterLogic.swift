//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by Benjamin Whitfield on 6/29/25.
//

import Foundation

struct ConverterLogic {
    
    var usdAmount: Int = 0;
    
    var isEuroSelected = false
    var isPesoSelected = false
    var isFlorinSelected = false
    var isRupeeSelected = false
    
    let euroRate = 0.85
    let pesoRate = 18.82
    let florinRate = 1.79
    let rupeeRate = 85.49
    
    mutating func setAmount(_ amount: String) -> Bool {
        if let value = Int(amount) {
            usdAmount = value
            return true
        } else {
            return false
        }
    }
    
    mutating func setCurrency(euro: Bool, peso: Bool, florin: Bool, rupee: Bool) {
        isEuroSelected = euro
        isPesoSelected = peso
        isFlorinSelected = florin
        isRupeeSelected = rupee
    }
    
    func getConversions() -> [String: String] {
        var results = [String: String]()
        results["USD"] = "$\(usdAmount)"
        
        if isEuroSelected {
            results["Euro"] = String(format: "%.2f", Double(usdAmount) * euroRate)
        }
        
        if isPesoSelected {
            results["Peso"] = String(format: "%.2f", Double(usdAmount) * pesoRate)
        }
        
        if isFlorinSelected {
            results["Florin"] = String(format: "%.2f", Double(usdAmount) * florinRate)
        }
        
        if isRupeeSelected {
            results["Rupee"] = String(format: "%.2f", Double(usdAmount) * rupeeRate)
        }
        
        return results
    }
    
    mutating func setup(amount: Int, selected: [String]) {
        usdAmount = amount
        isEuroSelected = selected.contains("Euro")
        isPesoSelected = selected.contains("Peso")
        isFlorinSelected = selected.contains("Florin")
        isRupeeSelected = selected.contains("Rupee")
    }

}
