//
//  URLSessionHTTPClient.swift
//  CoinGeckoSwiftUI
//
//  Created by Christian Manzaraz on 25/04/2025.
//

import Foundation

class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    private let requestMaker: URLSessionRequestMaker
    private let errorResolver: URLSessionErrorResolver
    
    init(session: URLSession = .shared, requestMaker: URLSessionRequestMaker, errorResolver: URLSessionErrorResolver) {
        self.session = session
        self.requestMaker = requestMaker
        self.errorResolver = errorResolver
    }
    
    
    func makeRequest(endpoint: Endpoint, baseUrl: String) async -> Result<Data, HTTPClientError> {
        
        guard let url = requestMaker.url(endpoint: endpoint, baseUrl: baseUrl) else {
            return .failure(.badURL)
        }
        
        // Adding a request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = [
          "accept": "application/json",
          "x-cg-demo-api-key": "CG-tUyGT8oban9Fz8LvC8DQw3Hk"
        ]
        
        do {
//            let result = try await session.data(from: url) // Original Code
            let result = try await session.data(for: request) // Adapted to accept request

            guard let response = result.1 as? HTTPURLResponse else {
                return .failure(.responseError)
            }
            
            guard response.statusCode == 200 else {
                return .failure(errorResolver.resolve(statusCode: response.statusCode))
            }
            
            return .success(result.0)
        } catch  {
            return .failure(errorResolver.resolve(error: error))
        }
    }

}
