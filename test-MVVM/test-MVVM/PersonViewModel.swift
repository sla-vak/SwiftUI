//
//  PersonViewModel.swift
//  test-MVVM
//
//  Created by Вячеслав Каньшин on 03.11.2022.
//

import SwiftUI

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLast() {
        people.removeLast()
    }
    
    func removeFirst() {
        people.removeFirst()
    }
    
}

let peopleData = [
    Person(name: "Jon Snow", email: "jon@email.com", phoneNumber: "555-5555"),
    Person(name: "Robert Barathicc", email: "robert@email.com", phoneNumber: "555-5555"),
    Person(name: "Daenerys Targanyar", email: "daenerys@email.com", phoneNumber: "555-5555"),
    Person(name: "Cersei Lanister", email: "cersei@email.com", phoneNumber: "555-5555"),
    Person(name: "Samwell Tarly", email: "samwell@email.com", phoneNumber: "555-5555"),
]
