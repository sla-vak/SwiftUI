//
//  Person.swift
//  test-MVVM
//
//  Created by Вячеслав Каньшин on 03.11.2022.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
