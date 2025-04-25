//
//  Foundation+Extensions.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

extension Result {
    var failureValue: Error? {
        switch self {
            case .failure(let error):
                return error
            case .success:
                return nil
        }
    }
}
