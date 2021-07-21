//
//  ApiResponse.swift
//  food app
//
//  Created by Temitope on 21/07/2021.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
