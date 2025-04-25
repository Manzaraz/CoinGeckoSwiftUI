//
//  HTTPClient.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 25/04/2025.
//

import Foundation

protocol HTTPClient  {
    func makeRequest(endpoint: Endpoint, baseUrl: String) async -> Result<Data, HTTPClientError>
}
