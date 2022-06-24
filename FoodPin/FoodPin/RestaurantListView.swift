//
//  ContentView.swift
//  SimpleTable
//
//  Created by Вячеслав Каньшин on 19.06.2022.
//

import SwiftUI

struct RestaurantListView: View {
    
    @State var restaurantIsFavorites = Array(repeating: false, count: 21)
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate", "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
        
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]

    var body: some View {
        
        List {
            ForEach(restaurantNames.indices, id: \.self) { index in
                BasicTextImageRow(imageName: restaurantImages[index], name: restaurantNames[index], type: restaurantTypes[index], location: restaurantLocations[index], isFavorite: $restaurantIsFavorites[index])
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct BasicTextImageRow: View {
    
    var imageName: String
    var name: String
    var type: String
    var location: String
    
    @State private var showOptinons = false
    @State private var showError = false
    
    @Binding var isFavorite: Bool
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(imageName)
                .resizable()
                .frame(width: 120, height: 118)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(.title2, design: .rounded))
                
                Text(type)
                    .font(.system(.body, design: .rounded))
                
                Text(location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.gray)
            }
            if isFavorite {
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
        .onTapGesture {
            showOptinons.toggle()
        }
        .actionSheet(isPresented: $showOptinons) {
            ActionSheet(title: Text("What do you want to do?"),
                        message: nil,
                        buttons: [
                            .default(Text("Reserve a table")) {
                                self.showError.toggle()
                            },
                            .default(Text(isFavorite ? "Remove from favorites" : "Mark as favorite")) {
                                self.isFavorite.toggle()
                            },
                            .cancel()
                        ])
            
        }
        .alert(isPresented: $showError) {
            Alert(title: Text("Not available"),
                  message: Text("Sorry, this feature is not available yet. Please retry later."),
                  primaryButton: .default(Text("OK")),
                  secondaryButton: .cancel())
        }
    }
}

// -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

struct FullImageRow: View {
    
    var imageName: String
    var name: String
    var type: String
    var location: String
    
    @State private var showOptinons = false
    @State private var showError = false
    
    @Binding var isFavorite: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(20)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.system(.title2, design: .rounded))
                        
                    Text(type)
                        .font(.system(.body, design: .rounded))
                    
                    Text(location)
                        .font(.system(.subheadline, design: .rounded))
                        .foregroundColor(.gray)
                }
                if isFavorite {
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            }
            .padding(.horizontal)
            .padding(.bottom)

            
        }
        .onTapGesture {
            showOptinons.toggle()
        }
        .actionSheet(isPresented: $showOptinons) {
            ActionSheet(title: Text("What do you want to do?"),
                        message: nil,
                        buttons: [
                            .default(Text("Reserve a table")) {
                                self.showError.toggle()
                            },
                            .default(Text(isFavorite ? "Rremove from favorites" : "Mark as favorite")) {
                                self.isFavorite.toggle()
                            },
                            .cancel()
                        ])
            
        }
        .alert(isPresented: $showError) {
            Alert(title: Text("Not available"),
                  message: Text("Sorry, this feature is not available yet. Please retry later."),
                  primaryButton: .default(Text("OK")),
                  secondaryButton: .cancel())
        }
    }
}



struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListView()
        
        RestaurantListView()
            .preferredColorScheme(.dark)
        
        BasicTextImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong", isFavorite: .constant(true))
                    .previewLayout(.sizeThatFits)

        FullImageRow(imageName: "cafedeadend", name: "Cafe Deadend", type: "Cafe", location: "Hong Kong", isFavorite: .constant(true))
                    .previewLayout(.sizeThatFits)
    }
}
