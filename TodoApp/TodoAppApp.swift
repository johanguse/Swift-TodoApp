//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Johan Guse on 31/12/21.
//

import SwiftUI

@main
struct TodoAppApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
