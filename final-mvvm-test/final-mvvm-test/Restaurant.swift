//
//  Restaurant.swift
//  final-mvvm-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import Foundation

struct Restaurant: Identifiable {
    var id = UUID()
    
    var name: String
    var location: String
    var phoneNumber: String
}
