//
//  CryptocurrencyDomainErrorMapper.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

class CryptocurrencyDomainErrorMapper {
    func map (error: HTTPClientError?) -> CryptocurrencyDomainError {
        return .generic
    }
}
