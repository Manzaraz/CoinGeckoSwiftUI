//
//  ApiDataSourceType.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

protocol ApiDataSourceType {
    func getGlobalCryptoSymbolList() async -> Result<[String], HTTPClientError>
    
    func getCryptoList() async -> Result<[CryptocurrencyBasicDTO], HTTPClientError>
    
    func getPriceInfoForCryptos(id: [String]) async -> Result<[String: CryptocurrencyPriceInfoDTO], HTTPClientError>
}
