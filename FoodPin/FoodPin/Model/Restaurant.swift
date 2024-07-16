//
//  Restaurant.swift
//  FoodPin
//
//  Created by Вячеслав Каньшин on 24.06.2022.
//
import Combine
import CoreData

public class Restaurant: NSManagedObject {
    
    @NSManaged public var name: String
    @NSManaged public var type: String
    @NSManaged public var location: String
    @NSManaged public var phone: String
    @NSManaged public var summary: String
    @NSManaged public var image: Data
    @NSManaged public var isFavorite: Bool
    @NSManaged public var ratingText: String?
    @NSManaged public var canCreate: Bool

    convenience init(name: String, type: String, location: String, phone: String, summary: String, image: Data, isFavorite: Bool, ratingText: String? = nil, canCreate: Bool, context: NSManagedObjectContext) {
        let entity = NSEntityDescription.entity(forEntityName: "Restaurant", in: context)!
        self.init(entity: entity, insertInto: context)
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isFavorite = isFavorite
        self.ratingText = ratingText
        self.canCreate = canCreate
    }
    
}

extension Restaurant {
    
    enum Rating: String, CaseIterable {
        case awesome
        case good
        case okay
        case bad
        case terrible
        
        var image: String {
            switch self {
            case .awesome: return "love"
            case .good: return "cool"
            case .okay: return "happy"
            case .bad: return "sad"
            case .terrible: return "angry"
            }
        }
        
    }
    
    var rating: Rating? {
        get {
            guard let ratingText = ratingText else {
                return nil
            }
            
            return Rating(rawValue: ratingText)
        }
        
        set {
            self.ratingText = newValue?.rawValue
        }
    }
}
