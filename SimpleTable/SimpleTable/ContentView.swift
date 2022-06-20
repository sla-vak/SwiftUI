//
//  ContentView.swift
//  SimpleTable
//
//  Created by Вячеслав Каньшин on 19.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    var restaurantImages = [Image("Cafe Deadend"), Image("Homei"), Image("Teakha"), Image("Cafe Loisl"), Image("Petite Oyster"), Image("For Kee Restaurant"), Image("Po's Atelier"), Image("Bourke Street Bakery"), Image("Haigh's Chocolate"), Image("Palomino Espresso"), Image("Upstate"), Image("Traif"), Image("Graham Avenue Meats And Deli"), Image("Waffle & Wolf"), Image("Five Leaves"), Image("Confessional"), Image("Donostia"), Image("Royal Oak"), Image("CASK Pub and Kitchen")]
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Confessional", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var body: some View {
        
        List {
            
            ForEach(0...restaurantNames.count - 1, id: \.self) { restaurantName in
                HStack {
                    restaurantImages[restaurantName]
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                    Text(restaurantNames[restaurantName])
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
