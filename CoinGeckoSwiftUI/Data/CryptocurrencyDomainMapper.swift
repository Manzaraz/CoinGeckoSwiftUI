//
//  CryptocurrencyDomainMapper.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

class CryptocurrencyDomainMapper {
    func getCryptocurrencyBuilderList(symbolList: [String], cryptoList: [CryptocurrencyBasicDTO]) -> [CryptocurrencyBuilder] {
        var symbolListDic = [String: Bool]()
        symbolList.forEach { symbol in
            symbolListDic[symbol] = true
        }
        
        let globalCryptoList = cryptoList.filter { symbolListDic[$0.symbol] ?? false }

        let cryptocurrencyBuilderList =  globalCryptoList.map { CryptocurrencyBuilder(id: $0.id, name: $0.name, symbol: $0.symbol) }

        return cryptocurrencyBuilderList

    }
    
    
    func map(cryptocurrencyBuilderList: [CryptocurrencyBuilder], priceInfo: [String: CryptocurrencyPriceInfoDTO]) -> [Cryptocurrency] {
        cryptocurrencyBuilderList.forEach { cryptoBuilder in
            if let priceInfo = priceInfo[cryptoBuilder.id] {
                cryptoBuilder.price = priceInfo.price
                cryptoBuilder.price24h = priceInfo.price24h
                cryptoBuilder.volume24h = priceInfo.volume24h
                cryptoBuilder.marketCap = priceInfo.marketCap
            }
        }
        
        return cryptocurrencyBuilderList.compactMap { $0.build() }
    }
}
