//
//  CryptocurrencyGlobalInfoDTO.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

struct CryptocurrencyGlobalInfoDTO: Codable {
    let data: CryptocurrencyGlobalData
}

struct CryptocurrencyGlobalData: Codable {
    let cryptocurrencies: [String: Double]
    
    enum CodingKeys: String, CodingKey {
        case cryptocurrencies = "market_cap_percentage"
    }
}
