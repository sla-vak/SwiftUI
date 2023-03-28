//
//  ContentView.swift
//  final-mvvm-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import SwiftUI

struct RestaurantView: View {
    @ObservedObject var viewModel = RestaurantViewModel()
    var body: some View {
        
        VStack {
            ScrollView {
                ForEach(viewModel.restaurant) { Restaurant in
                    
                    HStack {
                        Text(Restaurant.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Text(Restaurant.location)
                        Text(Restaurant.phoneNumber)
                    }
                    .padding()
                }
            }
            Spacer()
            HStack(alignment: .bottom) {
                Menu("Menu") {
                    Button("Shuffle", action: {viewModel.shuffle()})
                    Button("Remove last", action: {viewModel.removeLast()})
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
