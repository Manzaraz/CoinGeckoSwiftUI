//
//  Cryptocurrency.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

struct Cryptocurrency {
    let id: String
    let name: String
    let symbol: String
    let price: Double
    let price24h: Double?
    let volume24h: Double?
    let marketCap: Double
}
