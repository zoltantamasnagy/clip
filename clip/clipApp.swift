//
//  clipApp.swift
//  clip
//
//  Created by Nagy Zoltán Tamás on 2023. 02. 19..
//

import SwiftUI

@main
struct clipApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
