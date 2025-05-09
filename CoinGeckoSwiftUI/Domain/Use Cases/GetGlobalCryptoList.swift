//
//  GetGlobalCryptoList.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

class GetGlobalCryptoList {
    private let repository: GlobalCryptoListRepositoryType
    
    init(repository: GlobalCryptoListRepositoryType) {
        self.repository = repository
    }
    
    
    func execute() async -> Result<[Cryptocurrency], CryptocurrencyDomainError> {
        let result = await repository.getGlobalCryptoList()
        
        guard let cryptoList = try? result.get() else {
            guard case .failure(let error) = result else {
                return .failure(.generic)
            }
            return .failure(error)
        }
        
        return .success(cryptoList.sorted { $0.marketCap > $1.marketCap })
    }
}
