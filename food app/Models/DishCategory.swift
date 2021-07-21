//
//  DishCategory.swift
//  food app
//
//  Created by Temitope on 28/02/2021.
//

import Foundation

struct DishCategory: Decodable {
    let id,name,image: String?
}

struct Orders: Decodable {
    let id,name: String?
    let dish : Dish?
}


struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
