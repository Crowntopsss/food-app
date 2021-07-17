//
//  NetworkManager.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//

import Foundation

struct NetworkService {
    private func createRequest(route: Route,
                               method: Method,
                               parameters: [String: Any]? = nil) -> URLRequest? {
        let urlString =  Route.baseUrl + route.description
        guard let url = urlString.asUrl else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        
        if let params = parameters {
            switch method {
            
            case .get:
                var urlcomponent = URLComponents(string: urlString)
                urlcomponent?.queryItems = params.map{ URLQueryItem(name: $0, value: "\($1)") }
                urlRequest.url = urlcomponent?.url
            case .post:
                let bodyData = try? JSONSerialization.data(withJSONObject: params, options: [])
            }
        }
        return urlRequest
    }
}
