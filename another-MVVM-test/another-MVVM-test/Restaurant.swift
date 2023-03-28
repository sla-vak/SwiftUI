//
//  Restaurant.swift
//  another-MVVM-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    
    var name: String
    var location: String
    var description: String
    var phoneNumber: String
}
