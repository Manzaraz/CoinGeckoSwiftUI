//
//  GlobalCryptoListRepositoryType.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

protocol GlobalCryptoListRepositoryType {
    func getGlobalCryptoList() async -> Result<[Cryptocurrency], CryptocurrencyDomainError>
}
