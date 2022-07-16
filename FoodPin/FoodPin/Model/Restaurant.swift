//
//  Restaurant.swift
//  FoodPin
//
//  Created by Вячеслав Каньшин on 24.06.2022.
//

struct Restaurant {
    var name: String
    var type: String
    var location: String
    var phone: String
    var description: String
    var image: String
    var isFavorite: Bool
    
    enum Rating:String, CaseIterable {
        case awesome
        case good
        case okay
        case bad
        case terrible
        
        var image: String {
            switch self {
            case .awesome:
                return "Love"
            case .good:
                return "Cool"
            case .okay:
                return "Happy"
            case .bad:
                return "Sad"
            case .terrible:
                return "Angry"
            }
        }
    }
    
    init(name: String, type: String, location: String, phone: String, description: String, image: String, isFavorite: Bool = false) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.description = description
        self.image = image
        self.isFavorite = isFavorite
    }
    
    init() {
        self.init(name: "", type: "", location: "", phone: "", description: "", image: "", isFavorite: false)
    }
}

