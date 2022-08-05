//
//  CoreDataTestApp.swift
//  CoreDataTest
//
//  Created by Вячеслав Каньшин on 25.07.2022.
//

import SwiftUI

@main
struct CoreDataTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
