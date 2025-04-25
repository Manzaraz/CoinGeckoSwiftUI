//
//  HTTPClientError.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 24/04/2025.
//

import Foundation

enum HTTPClientError: Error {
    case clientError 
    case serverError
    case generic
    case parsingError
    case badURL
    case responseError
    case tooManyRequests
}

