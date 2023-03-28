//
//  RestaurantViewModel.swift
//  another-MVVM-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import SwiftUI

class RestaurantViewModel: ObservableObject {
    @Published var Restaurant: [Restaurant] = []
    
    init() {
        addRestaurants()
    }
    
    func addRestaurants() {
        Restaurant = RestaurantData
    }
}

let RestaurantData = [
    Restaurant(name: "Coffee with John", location: "UK, London", description: "Very delicious coffee", phoneNumber: "555-3566"),
    Restaurant(name: "Steaks with Mary", location: "Japan, Tokyo", description: "Beautiful steaks", phoneNumber: "555-3487"),
    Restaurant(name: "Soup with Alex", location: "Russia, Barabinsk", description: "Taste our soup", phoneNumber: "555-5786"),
    Restaurant(name: "Burgers with Beef", location: "USA, Miami", description: "Burgers with real beef, without human!", phoneNumber: "555-2346"),
]
