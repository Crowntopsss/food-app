//
//  Dish.swift
//  food app
//
//  Created by Temitope on 16/07/2021.
//

import Foundation

struct Dish {
    let id, name, description, image :String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%2f", calories ?? 0 )
    }
}
