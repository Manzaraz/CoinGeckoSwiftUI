//
//  Endpoint.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 25/04/2025.
//

import Foundation

struct Endpoint  {
    let path: String
    let queryParameters: [String: Any]
    let method: HTTPMethod
}
