//
//  MainView.swift
//  FoodPin
//
//  Created by Вячеслав Каньшин on 06.08.2022.
//

import SwiftUI

struct MainView: View {
    @Environment(\.managedObjectContext) var context
    @State private var selectedTabIndex = 0
    var body: some View {
        
        TabView(selection: $selectedTabIndex) {
            RestaurantListView()
                .tabItem {
                    Label("Favorites", systemImage: "tag.fill")
                }
                .tag(0)

            DiscoverView(context: _context)
                .tabItem {
                    Label("Discover", systemImage: "wand.and.rays")
                }
                .tag(1)

            AboutView()
                .tabItem {
                    Label("About", systemImage: "square.stack")
                }
                .tag(2)
        }
        .accentColor(Color("NavigationBarTitle"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
