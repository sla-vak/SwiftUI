//
//  ContentView.swift
//  another-MVVM-test
//
//  Created by Вячеслав Каньшин on 05.11.2022.
//

import SwiftUI

struct RestaurantView: View {
    @ObservedObject var viewModel = RestaurantViewModel()
    var body: some View {
        
        ScrollView {
            ForEach(viewModel.Restaurant) { Restaurant in
                HStack {
                    VStack(alignment: .leading) {
                        Text(Restaurant.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(Restaurant.phoneNumber)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    VStack {
                        Text(Restaurant.description)
                            .font(.title3)
                        Text(Restaurant.location)
                            .font(.title3)
                    }
                }
                .padding()
            }
        }
        .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
