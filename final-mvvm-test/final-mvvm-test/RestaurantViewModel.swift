//
//  RestaurantViewModel.swift
//  final-mvvm-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import SwiftUI

class RestaurantViewModel: ObservableObject {
    
    @Published var restaurant: [Restaurant] = []
    
    init() {
        addRestaurants()
    }
    
    func addRestaurants() {
        restaurant = restaurantsData
    }
    
    func shuffle() {
        restaurant.shuffle()
    }
    
    func removeLast() {
        restaurant.removeLast()
    }
}

let restaurantsData = [

    Restaurant(name: "mcDonalds", location: "USA, Los Angeles", phoneNumber: "555-8654"),
    Restaurant(name: "KFC", location: "China, Pekin", phoneNumber: "555-2679"),
    Restaurant(name: "Burger King", location: "Russia, Moscow", phoneNumber: "79098346512"),
    Restaurant(name: "Starbucks", location: "Finland, Helsinki", phoneNumber: "555-7653"),

]
