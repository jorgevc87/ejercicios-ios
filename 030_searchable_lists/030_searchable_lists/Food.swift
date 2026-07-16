//
//  Food.swift
//  030_searchable_lists
//
//  Created by Jorge Villavicencio on 6/07/26.
//

import Foundation

struct Food: Hashable {
    var name: String
    var category: Category
    
    enum Category: String {
        case fruit
        case meat
        case vegetable
    }
}


extension Food {
    static let sampleFood: [Food] = [
        Food(name: "Apple", category: .fruit)
        Food(name: "Pear", category: .fruit)
        Food(name: "Orange", category: .fruit)
        Food(name: "Lemon", category: .fruit)
        Food(name: "Strawberry", category: .fruit)
        Food(name: "Plum", category: .fruit)
        Food(name: "Banana", category: .fruit)
        Food(name: "Melon", category: .fruit)
        Food(name: "Peach", category: .fruit)
        Food(name: "pork", category: .meat)
        Food(name: "Beef", category: .meat)
        Food(name: "Goat", category: .meat)
        Food(name: "Chicken", category: .meat)
        Food(name: "Turkey", category: .meat)
        Food(name: "Fish", category: .meat)
        Food(name: "Crab", category: .meat)
        Food(name: "lobster", category: .meat)
        Food(name: "Shrimp", category: .meat)
        Food(name: "Carrot", category: .meat)
        Food(name: "Carrot", category: .vegetable)
        Food(name: "Lettuce", category: .vegetable)
        Food(name: "Tomato", category: .vegetable)
        Food(name: "Onion", category: .vegetable)
        Food(name: "Broccoli", category: .vegetable)
        Food(name: "Cauliflower", category: .vegetable)
        Food(name: "Eggplant", category: .vegetable)
        Food(name: "Swiss Chard", category: .vegetable)
        Food(name: "Spinach", category: .vegetable)
        Food(name: "Zuchinni", category: .vegetable)
    ]
}


