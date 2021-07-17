//
//  Route.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//
import Foundation

enum Route {
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    var description: String {
        switch self {
        case .temp: return "/temp"
        }
    }
}
